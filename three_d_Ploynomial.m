function varargout = three_d_Ploynomial(varargin)
% THREE_D_PLOYNOMIAL MATLAB code for three_d_Ploynomial.fig
%      THREE_D_PLOYNOMIAL, by itself, creates a new THREE_D_PLOYNOMIAL or raises the existing
%      singleton*.
%
%      H = THREE_D_PLOYNOMIAL returns the handle to a new THREE_D_PLOYNOMIAL or the handle to
%      the existing singleton*.
%
%      THREE_D_PLOYNOMIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREE_D_PLOYNOMIAL.M with the given input arguments.
%
%      THREE_D_PLOYNOMIAL('Property','Value',...) creates a new THREE_D_PLOYNOMIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before three_d_Ploynomial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to three_d_Ploynomial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help three_d_Ploynomial

% Last Modified by GUIDE v2.5 22-Jul-2020 03:41:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @three_d_Ploynomial_OpeningFcn, ...
                   'gui_OutputFcn',  @three_d_Ploynomial_OutputFcn, ...
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


% --- Executes just before three_d_Ploynomial is made visible.
function three_d_Ploynomial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to three_d_Ploynomial (see VARARGIN)

% Choose default command line output for three_d_Ploynomial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes three_d_Ploynomial wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.checkbox1,'value',1)
set(handles.checkbox2,'value',1)
set(handles.checkbox3,'value',1)
set(handles.checkbox4,'value',1)
set(handles.checkbox21,'value',1)
set(handles.checkbox22,'value',1)
set(handles.checkbox23,'value',1)
set(handles.checkbox24,'value',1)




% --- Outputs from this function are returned to the command line.
function varargout = three_d_Ploynomial_OutputFcn(hObject, eventdata, handles) 
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
set(handles.text4,'string',num2str(length(gcp)))

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close(three_d_Ploynomial)

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


% --- Executes on button press in checkbox33.
function checkbox33_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox33


% --- Executes on button press in checkbox34.
function checkbox34_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox34


% --- Executes on button press in checkbox35.
function checkbox35_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox35


% --- Executes on button press in checkbox36.
function checkbox36_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox36


% --- Executes on button press in checkbox37.
function checkbox37_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox37


% --- Executes on button press in checkbox38.
function checkbox38_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox38


% --- Executes on button press in checkbox39.
function checkbox39_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox39


% --- Executes on button press in checkbox40.
function checkbox40_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox40


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gcp icp T_Coefficients T_rc T_sc_off T_rc_GCP
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
Z_gcp = ground(ismember(image(:,2),gcp),4); Z_icp = ground(ismember(image(:,2),icp),4);

offsetx = mean(X_gcp); scalex = (max(X_gcp)-min(X_gcp))/2;
offsety = mean(Y_gcp); scaley = (max(Y_gcp)-min(Y_gcp))/2;
offsetz = mean(Z_gcp); scalez = (max(Z_gcp)-min(Z_gcp))/2;
X_gcp = (X_gcp-offsetx)/(scalex); X_icp = (X_icp-offsetx)/(scalex);
Y_gcp = (Y_gcp-offsety)/(scaley); Y_icp = (Y_icp-offsety)/(scaley);
Z_gcp = (Z_gcp-offsetz)/(scalez); Z_icp = (Z_icp-offsetz)/(scalez);

a0=get(handles.checkbox1,'value');a1=get(handles.checkbox2,'value');a2=get(handles.checkbox3,'value');
a3=get(handles.checkbox4,'value');a4=get(handles.checkbox5,'value');a5=get(handles.checkbox6,'value');
a6=get(handles.checkbox7,'value');a7=get(handles.checkbox8,'value');a8=get(handles.checkbox9,'value');
a9=get(handles.checkbox10,'value');a10=get(handles.checkbox11,'value');a11=get(handles.checkbox12,'value');
a12=get(handles.checkbox13,'value');a13=get(handles.checkbox14,'value');a14=get(handles.checkbox15,'value');
a15=get(handles.checkbox16,'value');a16=get(handles.checkbox17,'value');a17=get(handles.checkbox18,'value');
a18=get(handles.checkbox19,'value');a19=get(handles.checkbox20,'value');b0=get(handles.checkbox21,'value');
b1=get(handles.checkbox22,'value');b2=get(handles.checkbox23,'value');b3=get(handles.checkbox24,'value');
b4=get(handles.checkbox25,'value');b5=get(handles.checkbox26,'value');b6=get(handles.checkbox27,'value');
b7=get(handles.checkbox28,'value');b8=get(handles.checkbox29,'value');b9=get(handles.checkbox30,'value');
b10=get(handles.checkbox31,'value');b11=get(handles.checkbox32,'value');b12=get(handles.checkbox33,'value');
b13=get(handles.checkbox34,'value');b14=get(handles.checkbox35,'value');b15=get(handles.checkbox36,'value');
b16=get(handles.checkbox37,'value');b17=get(handles.checkbox38,'value');b18=get(handles.checkbox39,'value');
b19=get(handles.checkbox40,'value');

if a0 == 0 || a1 == 0 || a2 == 0 || a3 == 0 || b0 == 0 || b1 == 0 || b2 == 0 || b3 == 0
    msgbox('With this number of coefficients, you can not do 3D reconstruction in the next step. You must select at least a0-a3 and b0-b3 !!','warning','warn')
end

a = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19]';
b = [b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19]';

if (sum(a)+sum(b)) > 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b))),'  ,please select more GCPs !!'],'Error','error')
    error('Not enough GCPs.')
elseif (sum(a)+sum(b)) == 2*length(gcp)
    msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b))),'  ,It is better to choose more GCPs !!'],'warning','warn')
end

power_r = three_D_power(a);
power_c = three_D_power(b);

r=[];c=[];
Ar = zeros(length(gcp),length(a));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    r(i,1) = y_gcp(i);
    for j = 1:length(a)
        Ar(i,j) = X^power_r(j,1)*Y^power_r(j,2)*Z^power_r(j,3);
    end
end
Ar(:,a == 0) = [];
aCap = inv(Ar'*Ar)*Ar'*r;
power_r(a ~= 0,4) = aCap;
r_com_GCP = Ar*aCap;
dr_GCP = r_com_GCP - r;

Ac = zeros(length(gcp),length(b));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i);
    for j = 1:length(b)
        Ac(i,j) = X^power_c(j,1)*Y^power_c(j,2)*Z^power_c(j,3);
    end
end
Ac(:,b == 0) = [];
bCap = inv(Ac'*Ac)*Ac'*c;
power_c(b ~= 0,4) = bCap;
c_com_GCP = Ac*bCap;
dc_GCP = c_com_GCP - c;

% Accuracy assessment
r=[];c=[];
Ar = zeros(length(icp),length(a));
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i); Z = Z_icp(i);
    r(i,1) = y_icp(i);
    for j = 1:length(a)
        Ar(i,j) = X^power_r(j,1)*Y^power_r(j,2)*Z^power_r(j,3);
    end
end
Ar(:,a == 0) = [];
r_com = Ar*aCap;
dr = r_com - r;

Ac = zeros(length(icp),length(b));
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i); Z = Z_icp(i);
    c(i,1) = x_icp(i);
    for j = 1:length(b)
        Ac(i,j) = X^power_c(j,1)*Y^power_c(j,2)*Z^power_c(j,3);
    end
end
Ac(:,b == 0) = [];
c_com = Ac*bCap;
dc = c_com - c;
RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text10,'string',num2str(RMSE))
% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2','Coeff 3','Coeff 4','Coeff 5','Coeff 6','Coeff 7','Coeff 8','Coeff 9','Coeff 10','Coeff 11','Coeff 12','Coeff 13','Coeff 14','Coeff 15','Coeff 16','Coeff 17','Coeff 18','Coeff 19'};
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

name = {'X-offset','Y-offset','Z-offset','X-scale','Y-scale','Z-scale'};
T_sc_off = table([offsetx;offsety;offsetz;scalex;scaley;scalez],'rownames',name);
set(handles.pushbutton6,'enable','on')




% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_Coefficients T_rc T_sc_off T_rc_GCP
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['3D Global polynomial Coefficients ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\3D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\3D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\3D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    writetable(T_rc_GCP,[masir,'\3D Global polynomial Coefficients ',spe,'.xlsx'],'sheet','dr-dc GCP')
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end
