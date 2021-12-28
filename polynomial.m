function varargout = polynomial(varargin)
% POLYNOMIAL MATLAB code for polynomial.fig
%      POLYNOMIAL, by itself, creates a new POLYNOMIAL or raises the existing
%      singleton*.
%
%      H = POLYNOMIAL returns the handle to a new POLYNOMIAL or the handle to
%      the existing singleton*.
%
%      POLYNOMIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POLYNOMIAL.M with the given input arguments.
%
%      POLYNOMIAL('Property','Value',...) creates a new POLYNOMIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before polynomial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to polynomial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help polynomial

% Last Modified by GUIDE v2.5 21-Jul-2020 17:33:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @polynomial_OpeningFcn, ...
                   'gui_OutputFcn',  @polynomial_OutputFcn, ...
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


% --- Executes just before polynomial is made visible.
function polynomial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to polynomial (see VARARGIN)

% Choose default command line output for polynomial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.edit8,'string',num2str(4));
set(handles.edit9,'string',num2str(2));
set(handles.edit10,'string',num2str(4));

% UIWAIT makes polynomial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = polynomial_OutputFcn(hObject, eventdata, handles) 
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = 0;
[FileName,PathName]=uigetfile('.txt');
if FileName ~= 0
    set(handles.edit2,'string',[PathName,FileName])
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
adi = get(handles.edit1,'string');
adg = get(handles.edit2,'string');
image = load(adi);
groung = load(adg);
global gcp icp
[gcp,icp]=GCP_select(image(:,2:end));
set(handles.text12,'string',num2str(length(gcp)))



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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes on button press in checkbox10.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10


% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in checkbox13.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox13


% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox14


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18


% --- Executes on button press in checkbox19.
function checkbox19_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox19


% --- Executes on button press in checkbox20.
function checkbox20_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox20


% --- Executes on button press in checkbox21.
function checkbox21_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox21


% --- Executes on button press in checkbox22.
function checkbox22_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox22


% --- Executes on button press in checkbox23.
function checkbox23_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox23


% --- Executes on button press in checkbox24.
function checkbox24_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox24


% --- Executes on button press in checkbox25.
function checkbox25_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox25


% --- Executes on button press in checkbox26.
function checkbox26_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox26


% --- Executes on button press in checkbox27.
function checkbox27_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox27


% --- Executes on button press in checkbox28.
function checkbox28_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox28


% --- Executes on button press in checkbox29.
function checkbox29_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox29


% --- Executes on button press in checkbox30.
function checkbox30_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox30


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp T_Coefficients T_rc T_sc_off ground T_rc_GCP image
adi = []; adg = [];
adi = get(handles.edit1,'string');
adg = get(handles.edit2,'string');
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

a0=get(handles.checkbox1,'value');a1=get(handles.checkbox2,'value');a2=get(handles.checkbox3,'value');
a3=get(handles.checkbox4,'value');a4=get(handles.checkbox5,'value');a5=get(handles.checkbox6,'value');
a6=get(handles.checkbox7,'value');a7=get(handles.checkbox8,'value');a8=get(handles.checkbox9,'value');
a9=get(handles.checkbox10,'value');a10=get(handles.checkbox11,'value');a11=get(handles.checkbox12,'value');
a12=get(handles.checkbox13,'value');a13=get(handles.checkbox14,'value');a14=get(handles.checkbox15,'value');
b0=get(handles.checkbox16,'value');b1=get(handles.checkbox17,'value');b2=get(handles.checkbox18,'value');
b3=get(handles.checkbox19,'value');b4=get(handles.checkbox20,'value');b5=get(handles.checkbox21,'value');
b6=get(handles.checkbox22,'value');b7=get(handles.checkbox23,'value');b8=get(handles.checkbox24,'value');
b9=get(handles.checkbox25,'value');b10=get(handles.checkbox26,'value');b11=get(handles.checkbox27,'value');
b12=get(handles.checkbox28,'value');b13=get(handles.checkbox29,'value');b14=get(handles.checkbox30,'value');

a = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14]';
b = [b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14]';

if (sum(a)+sum(b)) > 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b))),'  ,please select more GCPs !!'],'Error','error')
    error('Not enough GCPs.')
elseif (sum(a)+sum(b)) == 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b))),'  ,It is better to choose more GCPs !!'],'warning','warn')
end

power_r = two_D_power(a);
power_c = two_D_power(b);
r=[];c=[];
Ar = zeros(length(gcp),length(a));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i);
    r(i,1) = y_gcp(i);
    for j = 1:length(a)
        Ar(i,j) = X^power_r(j,1)*Y^power_r(j,2);
    end
end
Ar(:,a == 0) = [];
aCap = inv(Ar'*Ar)*Ar'*r;
power_r(a ~= 0,3) = aCap;
r_com_GCP = Ar*aCap;
dr_GCP = r_com_GCP - r;

Ac = zeros(length(gcp),length(b));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i);
    c(i,1) = x_gcp(i);
    for j = 1:length(b)
        Ac(i,j) = X^power_c(j,1)*Y^power_c(j,2);
    end
end
Ac(:,b == 0) = [];
bCap = inv(Ac'*Ac)*Ac'*c;
power_c(b ~= 0,3) = bCap;
c_com_GCP = Ac*bCap;
dc_GCP = c_com_GCP - c;

% Accuracy assessment
r=[];c=[];
Ar = zeros(length(icp),length(a));
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i);
    r(i,1) = y_icp(i);
    for j = 1:length(a)
        Ar(i,j) = X^power_r(j,1)*Y^power_r(j,2);
    end
end
Ar(:,a == 0) = [];
r_com = Ar*aCap;
dr = r_com - r;

Ac = zeros(length(icp),length(b));
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i);
    c(i,1) = x_icp(i);
    for j = 1:length(b)
        Ac(i,j) = X^power_c(j,1)*Y^power_c(j,2);
    end
end
Ac(:,b == 0) = [];
c_com = Ac*bCap;
dc = c_com - c;
RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text13,'string',num2str(RMSE))
% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2','Coeff 3','Coeff 4','Coeff 5','Coeff 6','Coeff 7','Coeff 8','Coeff 9','Coeff 10','Coeff 11','Coeff 12','Coeff 13','Coeff 14'};
a_Coefficients = zeros(size(a)); b_Coefficients = zeros(size(b));
a_Coefficients(a == 1,1) = aCap;
b_Coefficients(b == 1,1) = bCap;
T_Coefficients = table(a_Coefficients,b_Coefficients,'rownames',names);

ID = icp;
column = c_com;
row = r_com;
T_rc = table(ID,column,row,dc,dr);

ID = image(ismember(image(:,2),gcp),2);
column_GCP = image(ismember(image(:,2),gcp),3);
row_GCP = image(ismember(image(:,2),gcp),4);
T_rc_GCP = table(ID,column_GCP,row_GCP,dc_GCP,dr_GCP);

name = {'X-offset','Y-offset','X-scale','Y-scale'};
T_sc_off = table([offsetx;offsety;scalex;scaley],'rownames',name);
set(handles.pushbutton5,'enable','on')

set(handles.radiobutton5,'enable','on')
set(handles.radiobutton6,'enable','on')
set(handles.text10,'enable','on')
set(handles.edit8,'enable','on')
set(handles.text11,'enable','on')
set(handles.edit9,'enable','on')
set(handles.pushbutton8,'enable','on')
set(handles.text14,'enable','on')
set(handles.text15,'enable','on')
set(handles.text16,'enable','on')
set(handles.text17,'enable','on')
set(handles.edit10,'enable','on')
set(handles.text18,'enable','on')
set(handles.popupmenu1,'enable','on')
set(handles.pushbutton10,'enable','on')
set(handles.text19,'enable','on')
set(handles.text20,'enable','on')
set(handles.text21,'enable','on')
set(handles.pushbutton13,'enable','on')
set(handles.text22,'enable','on')
set(handles.text23,'enable','on')
set(handles.text24,'enable','on')



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_Coefficients T_rc T_sc_off T_rc_GCP
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['2D Global polynomial Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\2D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\2D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\2D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    writetable(T_rc_GCP,[masir,'\2D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','dr-dc GCP')
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ground coeff icp_coor offset_scale icp_ground fn dr_dc_GCP
fn = 0;
[fn , pn] = uigetfile('.xlsx');
if fn~=0
    coeff = readtable([pn,fn],'sheet',1);
    icp_coor = readtable([pn,fn],'sheet',2);
    offset_scale = readtable([pn,fn],'sheet',3);
    dr_dc_GCP = readtable([pn,fn],'sheet',4);
    icp_ground = ground(ismember(ground(:,1),icp_coor.ID),:);
end



% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
set(handles.pushbutton6,'enable','on')

% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
set(handles.pushbutton6,'enable','off')

% --- Executes on button press in checkbox31.
function checkbox31_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox31


% --- Executes on button press in checkbox32.
function checkbox32_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox32



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ground coeff icp_coor offset_scale icp_ground T_Coefficients T_rc T_sc_off fn T_rc_GCP dr_dc_GCP image T_dr_dc_IDW
rdb = get(handles.radiobutton6,'value');
if rdb == 1
    coeff = T_Coefficients;
    icp_coor = T_rc;
    offset_scale = T_sc_off;
    dr_dc_GCP = T_rc_GCP;
    icp_ground = ground(ismember(ground(:,1),icp_coor.ID),:);
else
    if fn==0
        msgbox('please select an external data !!','Error','error')
        error('please select an external data.')
    end
end
eff_GCP = str2num(get(handles.edit8,'string'));
d_pow = str2num(get(handles.edit9,'string'));

r_gcp = dr_dc_GCP.row_GCP;
c_gcp = dr_dc_GCP.column_GCP;
r_icp = icp_coor.row;
c_icp = icp_coor.column;
id_icp = icp_coor.ID;
id_gcp = dr_dc_GCP.ID;

for i= 1:size(icp_coor,1)
    dist = [id_gcp , sqrt((r_icp(i) - r_gcp).^2 + (c_icp(i) - c_gcp).^2),dr_dc_GCP.dc_GCP,dr_dc_GCP.dr_GCP];
    dist = sortrows(dist,2);
    dist_eff = [dist(1:eff_GCP,:),1./(dist(1:eff_GCP,2)).^d_pow];
    Cr = (-dist_eff(:,4)'*dist_eff(:,5))/(sum(dist_eff(:,5)));
    Cc = (-dist_eff(:,3)'*dist_eff(:,5))/(sum(dist_eff(:,5)));
    r_corr(i,1) = r_icp(i) + Cr;
    c_corr(i,1) = c_icp(i) + Cc;
end
% accuraccy assessment
dr_IDW = r_corr - image(ismember(image(:,2),id_icp),4);
dc_IDW = c_corr - image(ismember(image(:,2),id_icp),3);

RMSE_IDW = sqrt(sum(dc_IDW.^2 + dr_IDW.^2)/length(dr_IDW));
set(handles.text16,'string',num2str(RMSE_IDW));
% quiver
figure
plot(image(ismember(image(:,2),id_gcp),3),image(ismember(image(:,2),id_gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),id_gcp),3)+0.0008,image(ismember(image(:,2),id_gcp),4)+0.0008,num2str(id_gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),id_icp),3)+0.0008,image(ismember(image(:,2),id_icp),4)+0.0008,num2str(id_icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),dc_IDW,dr_IDW,'r'),title(['\color{blue} RMSE-IDW = ',num2str(RMSE_IDW)]),legend('GCP','ICP')
set(handles.pushbutton9,'enable','on')
%table 
T_dr_dc_IDW = table(id_icp,dc_IDW,dr_IDW);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global coeff T_dr_dc_IDW offset_scale 
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['2D IDW Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(coeff,[masir,'\2D IDW Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_dr_dc_IDW,[masir,'\2D IDW Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(offset_scale,[masir,'\2D IDW Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ground coeff icp_coor offset_scale icp_ground T_Coefficients T_rc T_sc_off fn T_rc_GCP dr_dc_GCP image T_dr_dc_MA
rdb = get(handles.radiobutton6,'value');
if rdb == 1
    coeff = T_Coefficients;
    icp_coor = T_rc;
    offset_scale = T_sc_off;
    dr_dc_GCP = T_rc_GCP;
    icp_ground = ground(ismember(ground(:,1),icp_coor.ID),:);
else
    if fn==0
        msgbox('please select an external data !!','Error','error')
        error('please select an external data.')
    end
end
eff_GCP = str2num(get(handles.edit10,'string'));
dop = get(handles.popupmenu1,'value');

r_gcp = dr_dc_GCP.row_GCP;
c_gcp = dr_dc_GCP.column_GCP;
r_com_gcp = r_gcp + dr_dc_GCP.dr_GCP;
c_com_gcp = c_gcp + dr_dc_GCP.dc_GCP;
r_icp = icp_coor.row;
c_icp = icp_coor.column;
id_icp = icp_coor.ID;
id_gcp = dr_dc_GCP.ID;

if eff_GCP*2 < (dop+1)*(dop+2)
    msgbox(['df = ',num2str(2*eff_GCP - (dop+1)*(dop+2)),'  ,please select more effective GCPs !!'],'Error','error')
    error('Not enough effective GCPs.')
elseif eff_GCP*2 == (dop+1)*(dop+2)
    msgbox(['df = ',num2str(2*eff_GCP - (dop+1)*(dop+2)),'  ,It is better to choose more effective GCPs !!'],'warning','warn')
end

for i= 1:size(icp_coor,1)
    dist = [id_gcp , sqrt((r_icp(i) - r_gcp).^2 + (c_icp(i) - c_gcp).^2),dr_dc_GCP.dc_GCP,dr_dc_GCP.dr_GCP,c_com_gcp,r_com_gcp];
    dist = sortrows(dist,2);
    dist_eff = dist(1:eff_GCP,:);
    
    if dop == 1
        Ar = [ones(eff_GCP,1) , dist_eff(:,6) , dist_eff(:,5)];
        Ac = [ones(eff_GCP,1) , dist_eff(:,6) , dist_eff(:,5)];
        w_r = dist_eff(:,4);
        w_c = dist_eff(:,3);
        aCap = inv(Ar'*Ar)*Ar'*w_r;
        bCap = inv(Ac'*Ac)*Ac'*w_c;
        Cr = -aCap'*[1;r_icp(i);c_icp(i)];
        Cc = -bCap'*[1;r_icp(i);c_icp(i)];
    elseif dop == 2
        Ar = [ones(eff_GCP,1) , dist_eff(:,6) , dist_eff(:,5) , dist_eff(:,6).^2 , dist_eff(:,6).*dist_eff(:,5) , dist_eff(:,5).^2];
        Ac = [ones(eff_GCP,1) , dist_eff(:,6) , dist_eff(:,5) , dist_eff(:,6).^2 , dist_eff(:,6).*dist_eff(:,5) , dist_eff(:,5).^2];
        w_r = dist_eff(:,4);
        w_c = dist_eff(:,3);
        aCap = inv(Ar'*Ar)*Ar'*w_r;
        bCap = inv(Ac'*Ac)*Ac'*w_c;
        Cr = -aCap'*[1;r_icp(i);c_icp(i);r_icp(i)^2;r_icp(i)*c_icp(i);c_icp(i)^2];
        Cc = -bCap'*[1;r_icp(i);c_icp(i);r_icp(i)^2;r_icp(i)*c_icp(i);c_icp(i)^2];
    end
    
    r_corr(i,1) = r_icp(i) + Cr;
    c_corr(i,1) = c_icp(i) + Cc;
end
% accuraccy assessment
dr_MA = r_corr - image(ismember(image(:,2),id_icp),4);
dc_MA = c_corr - image(ismember(image(:,2),id_icp),3);

RMSE_MA = sqrt(sum(dc_MA.^2 + dr_MA.^2)/length(dr_MA));
set(handles.text21,'string',num2str(RMSE_MA));
% quiver
figure
plot(image(ismember(image(:,2),id_gcp),3),image(ismember(image(:,2),id_gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),id_gcp),3)+0.0008,image(ismember(image(:,2),id_gcp),4)+0.0008,num2str(id_gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),id_icp),3)+0.0008,image(ismember(image(:,2),id_icp),4)+0.0008,num2str(id_icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),dc_MA,dr_MA,'r'),title(['\color{blue} RMSE-MA = ',num2str(RMSE_MA)]),legend('GCP','ICP')
set(handles.pushbutton11,'enable','on')
%table 
T_dr_dc_MA = table(id_icp,dc_MA,dr_MA);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global coeff T_dr_dc_MA offset_scale 
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['2D MA Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(coeff,[masir,'\2D MA Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_dr_dc_MA,[masir,'\2D MA Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(offset_scale,[masir,'\2D MA Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close(polynomial)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ground coeff icp_coor offset_scale icp_ground T_Coefficients T_rc T_sc_off fn T_rc_GCP dr_dc_GCP image T_dr_dc_MQ
rdb = get(handles.radiobutton6,'value');
if rdb == 1
    coeff = T_Coefficients;
    icp_coor = T_rc;
    offset_scale = T_sc_off;
    dr_dc_GCP = T_rc_GCP;
    icp_ground = ground(ismember(ground(:,1),icp_coor.ID),:);
else
    if fn==0
        msgbox('please select an external data !!','Error','error')
        error('please select an external data.')
    end
end

r_gcp = dr_dc_GCP.row_GCP;
c_gcp = dr_dc_GCP.column_GCP;
r_com_gcp = r_gcp + dr_dc_GCP.dr_GCP;
c_com_gcp = c_gcp + dr_dc_GCP.dc_GCP;
r_icp = icp_coor.row;
c_icp = icp_coor.column;
id_icp = icp_coor.ID;
id_gcp = dr_dc_GCP.ID;

for i = 1:size(r_gcp,1)
    f(:,i) = sqrt((r_com_gcp(i) - r_com_gcp).^2 + (c_com_gcp(i) - c_com_gcp).^2);
end
aCap = inv(f)*(-dr_dc_GCP.dr_GCP);
bCap = inv(f)*(-dr_dc_GCP.dc_GCP);

for i = 1:length(r_icp)
    fi = sqrt((r_icp(i) - r_com_gcp').^2 + (c_icp(i) - c_com_gcp').^2);
    Cr = fi*aCap;
    Cc = fi*bCap;
    
    r_corr(i,1) = r_icp(i) + Cr;
    c_corr(i,1) = c_icp(i) + Cc;
end
% accuraccy assessment
dr_MQ = r_corr - image(ismember(image(:,2),id_icp),4);
dc_MQ = c_corr - image(ismember(image(:,2),id_icp),3);

RMSE_MQ = sqrt(sum(dc_MQ.^2 + dr_MQ.^2)/length(dr_MQ));
set(handles.text24,'string',num2str(RMSE_MQ));
% quiver
figure
plot(image(ismember(image(:,2),id_gcp),3),image(ismember(image(:,2),id_gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),id_gcp),3)+0.0008,image(ismember(image(:,2),id_gcp),4)+0.0008,num2str(id_gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),id_icp),3)+0.0008,image(ismember(image(:,2),id_icp),4)+0.0008,num2str(id_icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),id_icp),3),image(ismember(image(:,2),id_icp),4),dc_MQ,dr_MQ,'r'),title(['\color{blue} RMSE-MQ = ',num2str(RMSE_MQ)]),legend('GCP','ICP')
set(handles.pushbutton14,'enable','on')
%table 
T_dr_dc_MQ = table(id_icp,dc_MQ,dr_MQ);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global coeff T_dr_dc_MQ offset_scale 
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['2D MQ Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(coeff,[masir,'\2D MQ Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_dr_dc_MQ,[masir,'\2D MQ Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(offset_scale,[masir,'\2D MQ Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end
