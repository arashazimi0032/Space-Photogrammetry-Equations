function varargout = two_d_projective(varargin)
% TWO_D_PROJECTIVE MATLAB code for two_d_projective.fig
%      TWO_D_PROJECTIVE, by itself, creates a new TWO_D_PROJECTIVE or raises the existing
%      singleton*.
%
%      H = TWO_D_PROJECTIVE returns the handle to a new TWO_D_PROJECTIVE or the handle to
%      the existing singleton*.
%
%      TWO_D_PROJECTIVE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TWO_D_PROJECTIVE.M with the given input arguments.
%
%      TWO_D_PROJECTIVE('Property','Value',...) creates a new TWO_D_PROJECTIVE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before two_d_projective_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to two_d_projective_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help two_d_projective

% Last Modified by GUIDE v2.5 21-Jul-2020 18:56:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @two_d_projective_OpeningFcn, ...
                   'gui_OutputFcn',  @two_d_projective_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before two_d_projective is made visible.
function two_d_projective_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to two_d_projective (see VARARGIN)

% Choose default command line output for two_d_projective
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes two_d_projective wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = two_d_projective_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = 0;
[FileName,PathName]=uigetfile('.txt');
if FileName ~= 0
    set(handles.edit1,'string',[PathName,FileName])
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = 0;
[FileName,PathName]=uigetfile('.txt');
if FileName ~= 0
    set(handles.edit3,'string',[PathName,FileName])
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
adi = get(handles.edit1,'string');
adg = get(handles.edit3,'string');
image = load(adi);
groung = load(adg);
global gcp icp
[gcp,icp]=GCP_select(image(:,2:end));
set(handles.text5,'string',num2str(length(gcp)))

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp T_Coefficients T_rc T_sc_off ground image
adi = []; adg = [];
adi = get(handles.edit1,'string');
adg = get(handles.edit3,'string');
if isempty(adi) || isempty(adg)
    msgbox('please select image or Ground point files !!','Error','error')
    error('please select image or Ground point files.')
end
image = load(adi);
ground = load(adg);
ground=[ground(:,1),CT2UTM(ground(:,2:4))];

x_gcp = image(ismember(image(:,2),gcp),3); x_icp = image(ismember(image(:,2),icp),3);
y_gcp = image(ismember(image(:,2),gcp),4); y_icp = image(ismember(image(:,2),icp),4);

X_gcp = ground(ismember(image(:,2),gcp),2); X_icp = ground(ismember(image(:,2),icp),2);
Y_gcp = ground(ismember(image(:,2),gcp),3); Y_icp = ground(ismember(image(:,2),icp),3);

offsetx = mean(X_gcp); scalex = (max(X_gcp)-min(X_gcp))/2;
offsety = mean(Y_gcp); scaley = (max(Y_gcp)-min(Y_gcp))/2;
X_gcp = (X_gcp-offsetx)/(scalex); X_icp = (X_icp-offsetx)/(scalex);
Y_gcp = (Y_gcp-offsety)/(scaley); Y_icp = (Y_icp-offsety)/(scaley);

if 8 > 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - 8),'  ,please select more GCPs !!'],'Error','error')
    error('Not enough GCPs.')
elseif 8 == 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - 8),'  ,It is better to choose more GCPs !!'],'warning','warn')
end

r=[];c=[];
r = y_gcp;
c = x_gcp;
X = X_gcp;
Y = Y_gcp;
A = zeros(2*length(gcp),8);
A = [ones(length(gcp),1) , X , Y , zeros(length(gcp),3) , -r.*X , -r.*Y;
     zeros(length(gcp),3) , ones(length(gcp),1) , X , Y , -c.*X , -c.*Y];
w = [r;c];
Cap = inv(A'*A)*A'*w;
aCap = Cap(1:3);
bCap = Cap(4:6);
dCap = Cap(7:8);

r_com = (aCap(1) + aCap(2)*X_icp + aCap(3)*Y_icp)./(1 + dCap(1)*X_icp + dCap(2)*Y_icp);
c_com = (bCap(1) + bCap(2)*X_icp + bCap(3)*Y_icp)./(1 + dCap(1)*X_icp + dCap(2)*Y_icp);
dr = r_com - y_icp;
dc = c_com - x_icp;

RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text8,'string',num2str(RMSE))

% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2'};
a_Coefficients = aCap;
b_Coefficients = bCap;
d_Coefficients = [1;dCap];

T_Coefficients = table(a_Coefficients,b_Coefficients,d_Coefficients,'rownames',names);

ID = icp;
column = c_com;
row = r_com;
T_rc = table(ID,column,row,dc,dr);


name = {'X-offset','Y-offset','X-scale','Y-scale'};
T_sc_off = table([offsetx;offsety;scalex;scaley],'rownames',name);
set(handles.pushbutton6,'enable','on')








% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_Coefficients T_rc T_sc_off 
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['2D Projective Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\2D Projective Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\2D Projective Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\2D Projective Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close(two_d_projective)
