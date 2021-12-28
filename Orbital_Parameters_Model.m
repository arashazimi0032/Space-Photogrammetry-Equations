function varargout = Orbital_Parameters_Model(varargin)
% ORBITAL_PARAMETERS_MODEL MATLAB code for Orbital_Parameters_Model.fig
%      ORBITAL_PARAMETERS_MODEL, by itself, creates a new ORBITAL_PARAMETERS_MODEL or raises the existing
%      singleton*.
%
%      H = ORBITAL_PARAMETERS_MODEL returns the handle to a new ORBITAL_PARAMETERS_MODEL or the handle to
%      the existing singleton*.
%
%      ORBITAL_PARAMETERS_MODEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ORBITAL_PARAMETERS_MODEL.M with the given input arguments.
%
%      ORBITAL_PARAMETERS_MODEL('Property','Value',...) creates a new ORBITAL_PARAMETERS_MODEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Orbital_Parameters_Model_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Orbital_Parameters_Model_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Orbital_Parameters_Model

% Last Modified by GUIDE v2.5 13-Aug-2020 02:39:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Orbital_Parameters_Model_OpeningFcn, ...
                   'gui_OutputFcn',  @Orbital_Parameters_Model_OutputFcn, ...
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


% --- Executes just before Orbital_Parameters_Model is made visible.
function Orbital_Parameters_Model_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Orbital_Parameters_Model (see VARARGIN)

% Choose default command line output for Orbital_Parameters_Model
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Orbital_Parameters_Model wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Orbital_Parameters_Model_OutputFcn(hObject, eventdata, handles) 
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
[gcp,icp]=GCP_select(image);
set(handles.text4,'string',num2str(length(gcp)))

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close(Orbital_Parameters_Model)

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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp orbital_parameters distortion_parameters RMSE_Table 
adi = []; adg = [];
adi = get(handles.edit1,'string');
adg = get(handles.edit2,'string');
ade = get(handles.edit3,'string');
if isempty(adi) || isempty(adg)
    msgbox('please select image or Ground point files !!','Error','error')
    error('please select image or Ground point files.')
end
image = load(adi);
ground = load(adg);
ephemeris = load(ade);

Number_of_Rows = 6000;
focal = 1.084;
beta = -20.84*pi/180;
ps = 13e-6;
im_acc = 6.5e-6;
t_center = 377.373;

row = image(:,3);
col = image(:,2);

image(:,4) = (row-Number_of_Rows/2).*ps;
image(:,5) = (col-Number_of_Rows/2).*ps;

f0=get(handles.checkbox1,'value');f1=get(handles.checkbox2,'value');Comg0=get(handles.checkbox3,'value');
Comg1=get(handles.checkbox4,'value');a=get(handles.checkbox5,'value');i=get(handles.checkbox6,'value');
omg0=get(handles.checkbox7,'value');omg1=get(handles.checkbox8,'value');omg2=get(handles.checkbox9,'value');
Phi0=get(handles.checkbox10,'value');Phi1=get(handles.checkbox11,'value');Phi2=get(handles.checkbox12,'value');
Kapa0=get(handles.checkbox13,'value');Kapa1=get(handles.checkbox14,'value');Kapa2=get(handles.checkbox15,'value');

str = [f0 f1 Comg0 Comg1 a i   omg0 omg1 omg2   Phi0 Phi1 Phi2   Kapa0 Kapa1 Kapa2];

[EOP,~,RMSE_G,RMSE_I,Pxiel_RMSE,dx,dy,dx_img,dy_img,itr,~,~] = space_resection1(image,ground,gcp,icp,str,focal,ephemeris,beta,im_acc,t_center,ps);
set(handles.text10,'string',num2str(RMSE_G))
set(handles.text13,'string',num2str(RMSE_I))
set(handles.text16,'string',num2str(Pxiel_RMSE))
set(handles.text18,'string',num2str(itr))
figure
subplot(121)
plot(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),'^b','MarkerFaceColor','blue')
text(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),'sr','MarkerFaceColor','red')
text(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),dx,dy,'r'),title(['\color{blue} RMSE Ground = ',num2str(RMSE_G),' (m)']),legend('GCP','ICP')

subplot(122)
plot(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),dx_img,dy_img,'r'),title(['\color{blue} RMSE Image = ',num2str(RMSE_I),' (m)']),legend('GCP','ICP')

sgtitle(['\fontsize{15}\color{red}iteration = ',num2str(itr)])

f0 = EOP(1);  f1 = EOP(2);  Comg0 = EOP(3);
Comg1 = EOP(4);  a = EOP(5);  in = EOP(6);
omg0 = EOP(7);  omg1 = EOP(8);  omg2 = EOP(9);
phi0 = EOP(10); phi1 = EOP(11); phi2 = EOP(12);
kap0 = EOP(13); kap1 = EOP(14); kap2 = EOP(15);
disp('------------------------------------------------------------ Orbital Parameters ----------------------------------------------------------')
orbital_parameters = table(f0,f1,Comg0,Comg1,a,in)
disp('------------------------------------------------------------ Distortion Parameters ----------------------------------------------------------')
OMG = [omg0 , omg1 , omg2]'; PHI = [phi0 , phi1 , phi2]';KAPA = [kap0 , kap1 , kap2]';
distortion_parameters = table(OMG,PHI,KAPA,'rownames',{'0','1','2'})
disp('--------------------------------------------------------------------- RMSE -------------------------------------------------')
RMSE = [RMSE_G,RMSE_I,Pxiel_RMSE]';
RMSE_Table = table(RMSE,'rownames',{'Ground (m)','Image (m)','Pixel (Px)'})
set(handles.pushbutton7,'enable','on')


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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = 0;
[FileName,PathName]=uigetfile('.txt');
if FileName ~= 0
    set(handles.edit3,'string',[PathName,FileName])
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global orbital_parameters distortion_parameters RMSE_Table 

myfile = ['Orbital Parameters Model Case 1.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(orbital_parameters,[masir,'\Orbital Parameters Model Case 1.xlsx'],'sheet','Keplerian Elements')
    writetable(distortion_parameters,[masir,'\Orbital Parameters Model Case 1.xlsx'],'sheet','Distortion parameters','WriteRowNames',true)
    writetable(RMSE_Table,[masir,'\Orbital Parameters Model Case 1.xlsx'],'sheet','RMSE','WriteRowNames',true)
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp orbital_parameters distortion_parameters RMSE_Table 
adi = []; adg = [];
adi = get(handles.edit1,'string');
adg = get(handles.edit2,'string');
ade = get(handles.edit3,'string');
if isempty(adi) || isempty(adg)
    msgbox('please select image or Ground point files !!','Error','error')
    error('please select image or Ground point files.')
end
image = load(adi);
ground = load(adg);
ephemeris = load(ade);

Number_of_Rows = 6000;
focal = 1.084;
beta = -20.84*pi/180;
ps = 13e-6;
im_acc = 6.5e-6;
t_center = 377.373;

row = image(:,3);
col = image(:,2);

image(:,4) = (row-Number_of_Rows/2).*ps;
image(:,5) = (col-Number_of_Rows/2).*ps;

f0=get(handles.checkbox1,'value');f1=get(handles.checkbox2,'value');Comg0=get(handles.checkbox3,'value');
Comg1=get(handles.checkbox4,'value');a=get(handles.checkbox5,'value');i=get(handles.checkbox6,'value');
omg0=get(handles.checkbox7,'value');omg1=get(handles.checkbox8,'value');omg2=get(handles.checkbox9,'value');
Phi0=get(handles.checkbox10,'value');Phi1=get(handles.checkbox11,'value');Phi2=get(handles.checkbox12,'value');
Kapa0=get(handles.checkbox13,'value');Kapa1=get(handles.checkbox14,'value');Kapa2=get(handles.checkbox15,'value');

str = [f0 f1 Comg0 Comg1 a i   omg0 omg1 omg2   Phi0 Phi1 Phi2   Kapa0 Kapa1 Kapa2];

[EOP,RMSE_G,RMSE_I,Pxiel_RMSE,dx,dy,dx_img,dy_img,itr] = space_resection2(image,ground,gcp,icp,str,focal,ephemeris,beta,im_acc,t_center,ps);

set(handles.text22,'string',num2str(RMSE_G))
set(handles.text25,'string',num2str(RMSE_I))
set(handles.text28,'string',num2str(Pxiel_RMSE))
set(handles.text30,'string',num2str(itr))

figure
subplot(121)
plot(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),'^b','MarkerFaceColor','blue')
text(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),'sr','MarkerFaceColor','red')
text(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),dx,dy,'r'),title(['\color{blue} RMSE Ground = ',num2str(RMSE_G),' (m)']),legend('GCP','ICP')

subplot(122)
plot(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),dx_img,dy_img,'r'),title(['\color{blue} RMSE Image = ',num2str(RMSE_I),' (m)']),legend('GCP','ICP')

sgtitle(['\fontsize{15}\color{red}iteration = ',num2str(itr)])

f0 = EOP(1);  f1 = EOP(2);  Comg0 = EOP(3);
Comg1 = EOP(4);  a = EOP(5);  in = EOP(6);
omg0 = EOP(7);  omg1 = EOP(8);  omg2 = EOP(9);
phi0 = EOP(10); phi1 = EOP(11); phi2 = EOP(12);
kap0 = EOP(13); kap1 = EOP(14); kap2 = EOP(15);
disp('------------------------------------------------------------ Orbital Parameters ----------------------------------------------------------')
orbital_parameters = table(f0,f1,Comg0,Comg1,a,in)
disp('------------------------------------------------------------ Distortion Parameters ----------------------------------------------------------')
OMG = [omg0 , omg1 , omg2]'; PHI = [phi0 , phi1 , phi2]';KAPA = [kap0 , kap1 , kap2]';
distortion_parameters = table(OMG,PHI,KAPA,'rownames',{'0','1','2'})
disp('--------------------------------------------------------------------- RMSE -------------------------------------------------')
RMSE = [RMSE_G,RMSE_I,Pxiel_RMSE]';
RMSE_Table = table(RMSE,'rownames',{'Ground (m)','Image (m)','Pixel (Px)'})
set(handles.pushbutton9,'enable','on')

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global orbital_parameters distortion_parameters RMSE_Table 

myfile = ['Orbital Parameters Model Case 2.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(orbital_parameters,[masir,'\Orbital Parameters Model Case 2.xlsx'],'sheet','Keplerian Elements')
    writetable(distortion_parameters,[masir,'\Orbital Parameters Model Case 2.xlsx'],'sheet','Distortion parameters','WriteRowNames',true)
    writetable(RMSE_Table,[masir,'\Orbital Parameters Model Case 2.xlsx'],'sheet','RMSE','WriteRowNames',true)
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp orbital_parameters distortion_parameters RMSE_Table 
adi = []; adg = [];
adi = get(handles.edit1,'string');
adg = get(handles.edit2,'string');
ade = get(handles.edit3,'string');
if isempty(adi) || isempty(adg)
    msgbox('please select image or Ground point files !!','Error','error')
    error('please select image or Ground point files.')
end
image = load(adi);
ground = load(adg);
ephemeris = load(ade);

Number_of_Rows = 6000;
focal = 1.084;
beta = -20.84*pi/180;
ps = 13e-6;
im_acc = 6.5e-6;
t_center = 377.373;

row = image(:,3);
col = image(:,2);

image(:,4) = (row-Number_of_Rows/2).*ps;
image(:,5) = (col-Number_of_Rows/2).*ps;

f0=get(handles.checkbox1,'value');f1=get(handles.checkbox2,'value');Comg0=get(handles.checkbox3,'value');
Comg1=get(handles.checkbox4,'value');a=get(handles.checkbox5,'value');i=get(handles.checkbox6,'value');
omg0=get(handles.checkbox7,'value');omg1=get(handles.checkbox8,'value');omg2=get(handles.checkbox9,'value');
Phi0=get(handles.checkbox10,'value');Phi1=get(handles.checkbox11,'value');Phi2=get(handles.checkbox12,'value');
Kapa0=get(handles.checkbox13,'value');Kapa1=get(handles.checkbox14,'value');Kapa2=get(handles.checkbox15,'value');

str = [f0 f1 Comg0 Comg1 a i   omg0 omg1 omg2   Phi0 Phi1 Phi2   Kapa0 Kapa1 Kapa2];

[EOP,X_gcp_com,Y_gcp_com,Z_gcp_com,RMSE_G,RMSE_I,Pxiel_RMSE,dx,dy,dx_img,dy_img,itr] = space_resection3(image,ground,gcp,icp,str,focal,ephemeris,beta,im_acc,t_center,ps);

set(handles.text33,'string',num2str(RMSE_G))
set(handles.text36,'string',num2str(RMSE_I))
set(handles.text39,'string',num2str(Pxiel_RMSE))
set(handles.text41,'string',num2str(itr))

figure
subplot(121)
plot(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),'^b','MarkerFaceColor','blue')
text(ground(ismember(ground(:,1),gcp),2),ground(ismember(ground(:,1),gcp),3),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),'sr','MarkerFaceColor','red')
text(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(ground(ismember(ground(:,1),icp),2),ground(ismember(ground(:,1),icp),3),dx,dy,'r'),title(['\color{blue} RMSE Ground = ',num2str(RMSE_G),' (m)']),legend('GCP','ICP')

subplot(122)
plot(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,1),gcp),4),image(ismember(image(:,1),gcp),5),num2str(image(ismember(image(:,1),gcp),1)),'color','blue','FontSize',12)
hold on
grid on
plot(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),num2str(image(ismember(image(:,1),icp),1)),'color','red','FontSize',12)
quiver(image(ismember(image(:,1),icp),4),image(ismember(image(:,1),icp),5),dx_img,dy_img,'r'),title(['\color{blue} RMSE Image = ',num2str(RMSE_I),' (m)']),legend('GCP','ICP')

sgtitle(['\fontsize{15}\color{red}iteration = ',num2str(itr)])

f0 = EOP(1);  f1 = EOP(2);  Comg0 = EOP(3);
Comg1 = EOP(4);  a = EOP(5);  in = EOP(6);
omg0 = EOP(7);  omg1 = EOP(8);  omg2 = EOP(9);
phi0 = EOP(10); phi1 = EOP(11); phi2 = EOP(12);
kap0 = EOP(13); kap1 = EOP(14); kap2 = EOP(15);
disp('------------------------------------------------------------ Orbital Parameters ----------------------------------------------------------')
orbital_parameters = table(f0,f1,Comg0,Comg1,a,in)
disp('------------------------------------------------------------ Distortion Parameters ----------------------------------------------------------')
OMG = [omg0 , omg1 , omg2]'; PHI = [phi0 , phi1 , phi2]';KAPA = [kap0 , kap1 , kap2]';
distortion_parameters = table(OMG,PHI,KAPA,'rownames',{'0','1','2'})
disp('--------------------------------------------------------------------- RMSE -------------------------------------------------')
RMSE = [RMSE_G,RMSE_I,Pxiel_RMSE]';
RMSE_Table = table(RMSE,'rownames',{'Ground (m)','Image (m)','Pixel (Px)'})
set(handles.pushbutton11,'enable','on')

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global orbital_parameters distortion_parameters RMSE_Table 

myfile = ['Orbital Parameters Model Case 3.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(orbital_parameters,[masir,'\Orbital Parameters Model Case 3.xlsx'],'sheet','Keplerian Elements')
    writetable(distortion_parameters,[masir,'\Orbital Parameters Model Case 3.xlsx'],'sheet','Distortion parameters','WriteRowNames',true)
    writetable(RMSE_Table,[masir,'\Orbital Parameters Model Case 3.xlsx'],'sheet','RMSE','WriteRowNames',true)
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end
