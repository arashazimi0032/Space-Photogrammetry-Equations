function varargout = Forward_RFM(varargin)
% FORWARD_RFM MATLAB code for Forward_RFM.fig
%      FORWARD_RFM, by itself, creates a new FORWARD_RFM or raises the existing
%      singleton*.
%
%      H = FORWARD_RFM returns the handle to a new FORWARD_RFM or the handle to
%      the existing singleton*.
%
%      FORWARD_RFM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARD_RFM.M with the given input arguments.
%
%      FORWARD_RFM('Property','Value',...) creates a new FORWARD_RFM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Forward_RFM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Forward_RFM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Forward_RFM

% Last Modified by GUIDE v2.5 12-Aug-2020 23:55:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Forward_RFM_OpeningFcn, ...
    'gui_OutputFcn',  @Forward_RFM_OutputFcn, ...
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


% --- Executes just before Forward_RFM is made visible.
function Forward_RFM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Forward_RFM (see VARARGIN)

% Choose default command line output for Forward_RFM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.checkbox1,'value',1)
set(handles.checkbox2,'value',1)
set(handles.checkbox3,'value',1)
set(handles.checkbox4,'value',1)
set(handles.checkbox20,'value',1)
set(handles.checkbox21,'value',1)
set(handles.checkbox22,'value',1)
set(handles.checkbox23,'value',1)


% UIWAIT makes Forward_RFM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Forward_RFM_OutputFcn(hObject, eventdata, handles)
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
clear,clc,close(Forward_RFM)


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


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.checkbox30,'enable','on')
set(handles.checkbox31,'enable','on')
set(handles.checkbox32,'enable','on')
set(handles.checkbox33,'enable','on')
set(handles.checkbox34,'enable','on')
set(handles.checkbox35,'enable','on')
set(handles.checkbox36,'enable','on')
set(handles.checkbox37,'enable','on')
set(handles.checkbox38,'enable','on')

function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.checkbox30,'enable','off')
set(handles.checkbox31,'enable','off')
set(handles.checkbox32,'enable','off')
set(handles.checkbox33,'enable','off')
set(handles.checkbox34,'enable','off')
set(handles.checkbox35,'enable','off')
set(handles.checkbox36,'enable','off')
set(handles.checkbox37,'enable','off')
set(handles.checkbox38,'enable','off')

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

rdi = get(handles.radiobutton4,'value');
rdd = get(handles.radiobutton3,'value');

a0=get(handles.checkbox1,'value');a1=get(handles.checkbox2,'value');a2=get(handles.checkbox3,'value');
a3=get(handles.checkbox4,'value');a4=get(handles.checkbox5,'value');a5=get(handles.checkbox6,'value');
a6=get(handles.checkbox7,'value');a7=get(handles.checkbox8,'value');a8=get(handles.checkbox9,'value');
a9=get(handles.checkbox10,'value');

b1=get(handles.checkbox11,'value');b2=get(handles.checkbox12,'value');b3=get(handles.checkbox13,'value');
b4=get(handles.checkbox14,'value');b5=get(handles.checkbox15,'value');b6=get(handles.checkbox16,'value');
b7=get(handles.checkbox17,'value');b8=get(handles.checkbox18,'value');b9=get(handles.checkbox19,'value');

d0=get(handles.checkbox20,'value');d1=get(handles.checkbox21,'value');d2=get(handles.checkbox22,'value');
d3=get(handles.checkbox23,'value');d4=get(handles.checkbox24,'value');d5=get(handles.checkbox25,'value');
d6=get(handles.checkbox26,'value');d7=get(handles.checkbox27,'value');d8=get(handles.checkbox28,'value');
d9=get(handles.checkbox29,'value');

if rdi == 1
    e1 = b1; e2 = b2; e3 = b3; e4 = b4; e5 = b5; e6 = b6; e7 = b7; e8 = b8; e9 = b9;
elseif rdd == 1
    e1=get(handles.checkbox30,'value');e2=get(handles.checkbox31,'value');e3=get(handles.checkbox32,'value');
    e4=get(handles.checkbox33,'value');e5=get(handles.checkbox34,'value');e6=get(handles.checkbox35,'value');
    e7=get(handles.checkbox36,'value');e8=get(handles.checkbox37,'value');e9=get(handles.checkbox38,'value');
end

if a0 == 0 || a1 == 0 || a2 == 0 || a3 == 0 || d0 == 0 || d1 == 0 || d2 == 0 || d3 == 0
    msgbox('With this number of coefficients, you can not do 3D reconstruction in the next step. You must select at least a0-a3 and d0-d3 !!','warning','warn')
end

a = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9]';
b = [1 b1 b2 b3 b4 b5 b6 b7 b8 b9 ]';
d = [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 ]';
e = [1 e1 e2 e3 e4 e5 e6 e7 e8 e9 ]';
if rdd == 1
    if (sum(a)+sum(b) + sum(d)+sum(e) - 2) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)+sum(e) - 2) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
elseif rdi == 1
    if (sum(a)+sum(b)+sum(d) - 1) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)-1) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
end

power_a = three_D_power(a);
power_b = three_D_power(b);
power_d = three_D_power(d);
power_e = three_D_power(e);

r=[];c=[];
A = zeros(length(gcp),length(a));
B = zeros(length(gcp),length(b));
D = zeros(length(gcp),length(d));
E = zeros(length(gcp),length(e));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    A(i,:) = X.^power_a(:,1)'.*Y.^power_a(:,2)'.*Z.^power_a(:,3)';
    B(i,:) = -r(i,1)* X.^power_b(:,1)'.*Y.^power_b(:,2)'.*Z.^power_b(:,3)';
    D(i,:) = X.^power_d(:,1)'.*Y.^power_d(:,2)'.*Z.^power_d(:,3)';
    E(i,:) = -c(i,1)* X.^power_e(:,1)'.*Y.^power_e(:,2)'.*Z.^power_e(:,3)';
end

A(:,a == 0) = [];
B(:,b == 0) = []; B(:,1) = [];
D(:,d == 0) = [];
E(:,e == 0) = []; E(:,1) = [];

if rdd == 1
    Sr = [A , B];
    abCap = inv(Sr'*Sr)*Sr'*r;
    aCap = abCap(1:sum(a));
    bCap = abCap(sum(a)+1:end);
    
    Sc = [D , E];
    deCap = inv(Sc'*Sc)*Sc'*c;
    dCap = deCap(1:sum(d));
    eCap = deCap(sum(d)+1:end);
elseif rdi == 1
    S = [A , B , zeros(length(gcp),sum(d));
        zeros(length(gcp),sum(a)) , E , D];
    dl = [r;c];
    Cap = inv(S'*S)*S'*dl;
    aCap = Cap(1:sum(a));
    bCap = Cap(sum(a)+1:sum(a)+sum(b)-1);
    dCap = Cap(sum(a)+sum(b):end);
    eCap = bCap;
end

power_a(a ~= 0,4) = aCap;
power_b(b ~= 0,4) = [1;bCap];
power_d(d ~= 0,4) = dCap;
power_e(e ~= 0,4) = [1;eCap];

r=[];c=[];
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    r_com_GCP(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com_GCP(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr_GCP = r_com_GCP - r;
dc_GCP = c_com_GCP - c;

%% Accuracy assessment

r=[];c=[];
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i); Z = Z_icp(i);
    c(i,1) = x_icp(i); r(i,1) = y_icp(i);
    
    r_com(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr = r_com - r;
dc = c_com - c;
RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text15,'string',num2str(RMSE))

% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2','Coeff 3','Coeff 4','Coeff 5','Coeff 6','Coeff 7','Coeff 8','Coeff 9'};
a_Coefficients = zeros(size(a)); b_Coefficients = zeros(size(b)); d_Coefficients = zeros(size(d)); e_Coefficients = zeros(size(e));
a_Coefficients(a == 1,1) = aCap;
b_Coefficients(b == 1,1) = [1;bCap];
d_Coefficients(d == 1,1) = dCap;
e_Coefficients(e == 1,1) = [1;eCap];
T_Coefficients = table(a_Coefficients,b_Coefficients,d_Coefficients,e_Coefficients,'rownames',names);

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
myfile = ['3D Rational Function Coefficients(Direct solution) ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\3D Rational Function Coefficients(Direct solution) ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\3D Rational Function Coefficients(Direct solution) ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\3D Rational Function Coefficients(Direct solution) ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    writetable(T_rc_GCP,[masir,'\3D Rational Function Coefficients(Direct solution) ',spe,'.xlsx'],'sheet','dr-dc GCP')
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

rdi = get(handles.radiobutton4,'value');
rdd = get(handles.radiobutton3,'value');

a0=get(handles.checkbox1,'value');a1=get(handles.checkbox2,'value');a2=get(handles.checkbox3,'value');
a3=get(handles.checkbox4,'value');a4=get(handles.checkbox5,'value');a5=get(handles.checkbox6,'value');
a6=get(handles.checkbox7,'value');a7=get(handles.checkbox8,'value');a8=get(handles.checkbox9,'value');
a9=get(handles.checkbox10,'value');

b1=get(handles.checkbox11,'value');b2=get(handles.checkbox12,'value');b3=get(handles.checkbox13,'value');
b4=get(handles.checkbox14,'value');b5=get(handles.checkbox15,'value');b6=get(handles.checkbox16,'value');
b7=get(handles.checkbox17,'value');b8=get(handles.checkbox18,'value');b9=get(handles.checkbox19,'value');

d0=get(handles.checkbox20,'value');d1=get(handles.checkbox21,'value');d2=get(handles.checkbox22,'value');
d3=get(handles.checkbox23,'value');d4=get(handles.checkbox24,'value');d5=get(handles.checkbox25,'value');
d6=get(handles.checkbox26,'value');d7=get(handles.checkbox27,'value');d8=get(handles.checkbox28,'value');
d9=get(handles.checkbox29,'value');

if rdi == 1
    e1 = b1; e2 = b2; e3 = b3; e4 = b4; e5 = b5; e6 = b6; e7 = b7; e8 = b8; e9 = b9;
elseif rdd == 1
    e1=get(handles.checkbox30,'value');e2=get(handles.checkbox31,'value');e3=get(handles.checkbox32,'value');
    e4=get(handles.checkbox33,'value');e5=get(handles.checkbox34,'value');e6=get(handles.checkbox35,'value');
    e7=get(handles.checkbox36,'value');e8=get(handles.checkbox37,'value');e9=get(handles.checkbox38,'value');
end

if a0 == 0 || a1 == 0 || a2 == 0 || a3 == 0 || d0 == 0 || d1 == 0 || d2 == 0 || d3 == 0
    msgbox('With this number of coefficients, you can not do 3D reconstruction in the next step. You must select at least a0-a3 and d0-d3 !!','warning','warn')
end

a = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9]';
b = [1 b1 b2 b3 b4 b5 b6 b7 b8 b9 ]';
d = [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 ]';
e = [1 e1 e2 e3 e4 e5 e6 e7 e8 e9 ]';
if rdd == 1
    if (sum(a)+sum(b) + sum(d)+sum(e) - 2) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)+sum(e) - 2) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
elseif rdi == 1
    if (sum(a)+sum(b)+sum(d) - 1) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)-1) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
end

power_a = three_D_power(a);
power_b = three_D_power(b);
power_d = three_D_power(d);
power_e = three_D_power(e);

% Approximate values
r=[];c=[];
A = zeros(length(gcp),length(a));
B = zeros(length(gcp),length(b));
D = zeros(length(gcp),length(d));
E = zeros(length(gcp),length(e));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    A(i,:) = X.^power_a(:,1)'.*Y.^power_a(:,2)'.*Z.^power_a(:,3)';
    B(i,:) = -r(i,1)* X.^power_b(:,1)'.*Y.^power_b(:,2)'.*Z.^power_b(:,3)';
    D(i,:) = X.^power_d(:,1)'.*Y.^power_d(:,2)'.*Z.^power_d(:,3)';
    E(i,:) = -c(i,1)* X.^power_e(:,1)'.*Y.^power_e(:,2)'.*Z.^power_e(:,3)';
end

A(:,a == 0) = [];
B(:,b == 0) = []; B(:,1) = [];
D(:,d == 0) = [];
E(:,e == 0) = []; E(:,1) = [];

if rdd == 1
    Sr = [A , B];
    abCap = inv(Sr'*Sr)*Sr'*r;
    aCap = abCap(1:sum(a));
    bCap = abCap(sum(a)+1:end);
    
    Sc = [D , E];
    deCap = inv(Sc'*Sc)*Sc'*c;
    dCap = deCap(1:sum(d));
    eCap = deCap(sum(d)+1:end);
elseif rdi == 1
    S = [A , B , zeros(length(gcp),sum(d));
        zeros(length(gcp),sum(a)) , E , D];
    dl = [r;c];
    Cap = inv(S'*S)*S'*dl;
    aCap = Cap(1:sum(a));
    bCap = Cap(sum(a)+1:sum(a)+sum(b)-1);
    dCap = Cap(sum(a)+sum(b):end);
    eCap = bCap;
end

power_a(a ~= 0,4) = aCap;
power_b(b ~= 0,4) = [1;bCap];
power_d(d ~= 0,4) = dCap;
power_e(e ~= 0,4) = [1;eCap];

% correction stage
itr = 1;
while 1
    
    r=[];c=[];Wr = zeros(length(gcp)); Wc = zeros(length(gcp));
    r0 = []; c0 = [];
    for i = 1:length(gcp)
        X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
        c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
        
        Wr(i,i) = 1/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
        Wc(i,i) = 1/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
        
        r0(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
        c0(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
        
    end

    if rdd == 1
        
        Sr = [A , B];
        abCap = inv(Sr'*Wr*Wr*Sr)*Sr'*Wr*(r-r0);        
        aCap = aCap + abCap(1:sum(a));
        bCap = bCap + abCap(sum(a)+1:end);
        
        Sc = [D , E];
        deCap = inv(Sc'*Wc*Wc*Sc)*Sc'*Wc*(c-c0);        
        dCap = dCap + deCap(1:sum(d));
        eCap = eCap + deCap(sum(d)+1:end);
         n_morm = norm([abCap;deCap]);
         
    elseif rdi == 1
        
        S = [A , zeros(length(gcp),sum(d)) , B;
            zeros(length(gcp),sum(a)) , D , E];
        W = diag([diag(Wr);diag(Wc)]);
        dl = [r-r0;c-c0];
        
        Cap = inv(S'*W*W*S)*S'*W*dl;
        
        aCap = aCap + Cap(1:sum(a));
        dCap = dCap + Cap(sum(a)+1:sum(a)+sum(d));
        bCap = bCap + Cap(sum(a)+sum(d)+1:end);
        eCap = bCap;
        n_morm = norm(Cap);
    end
    
    power_a(a ~= 0,4) = aCap;
    power_b(b ~= 0,4) = [1;bCap];
    power_d(d ~= 0,4) = dCap;
    power_e(e ~= 0,4) = [1;eCap];
    
    if n_morm<1e-8
        break
    elseif isnan(n_morm)
        msgbox('The system is divergent !!','Error','error')
        error('The system is divergent !!')
    elseif itr == 500
        msgbox('the system does not converge. Number of iteration 500 !!','Error','error')
        error('the system does not converge. Number of iteration 500 !!')
    end
    itr = itr + 1;
    
end
set(handles.text20,'string',num2str(itr))

r=[];c=[];
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    r_com_GCP(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com_GCP(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr_GCP = r_com_GCP - r;
dc_GCP = c_com_GCP - c;

%% Accuracy assessment

r=[];c=[];
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i); Z = Z_icp(i);
    c(i,1) = x_icp(i); r(i,1) = y_icp(i);
    
    r_com(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr = r_com - r;
dc = c_com - c;
RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text18,'string',num2str(RMSE))

% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2','Coeff 3','Coeff 4','Coeff 5','Coeff 6','Coeff 7','Coeff 8','Coeff 9'};
a_Coefficients = zeros(size(a)); b_Coefficients = zeros(size(b)); d_Coefficients = zeros(size(d)); e_Coefficients = zeros(size(e));
a_Coefficients(a == 1,1) = aCap;
b_Coefficients(b == 1,1) = [1;bCap];
d_Coefficients(d == 1,1) = dCap;
e_Coefficients(e == 1,1) = [1;eCap];
T_Coefficients = table(a_Coefficients,b_Coefficients,d_Coefficients,e_Coefficients,'rownames',names);

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
set(handles.pushbutton8,'enable','on')

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_Coefficients T_rc T_sc_off T_rc_GCP
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['3D Rational Function Coefficients(Iterative solution 1) ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\3D Rational Function Coefficients(Iterative solution 1) ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\3D Rational Function Coefficients(Iterative solution 1) ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\3D Rational Function Coefficients(Iterative solution 1) ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    writetable(T_rc_GCP,[masir,'\3D Rational Function Coefficients(Iterative solution 1) ',spe,'.xlsx'],'sheet','dr-dc GCP')
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
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

rdi = get(handles.radiobutton4,'value');
rdd = get(handles.radiobutton3,'value');

a0=get(handles.checkbox1,'value');a1=get(handles.checkbox2,'value');a2=get(handles.checkbox3,'value');
a3=get(handles.checkbox4,'value');a4=get(handles.checkbox5,'value');a5=get(handles.checkbox6,'value');
a6=get(handles.checkbox7,'value');a7=get(handles.checkbox8,'value');a8=get(handles.checkbox9,'value');
a9=get(handles.checkbox10,'value');

b1=get(handles.checkbox11,'value');b2=get(handles.checkbox12,'value');b3=get(handles.checkbox13,'value');
b4=get(handles.checkbox14,'value');b5=get(handles.checkbox15,'value');b6=get(handles.checkbox16,'value');
b7=get(handles.checkbox17,'value');b8=get(handles.checkbox18,'value');b9=get(handles.checkbox19,'value');

d0=get(handles.checkbox20,'value');d1=get(handles.checkbox21,'value');d2=get(handles.checkbox22,'value');
d3=get(handles.checkbox23,'value');d4=get(handles.checkbox24,'value');d5=get(handles.checkbox25,'value');
d6=get(handles.checkbox26,'value');d7=get(handles.checkbox27,'value');d8=get(handles.checkbox28,'value');
d9=get(handles.checkbox29,'value');

if rdi == 1
    e1 = b1; e2 = b2; e3 = b3; e4 = b4; e5 = b5; e6 = b6; e7 = b7; e8 = b8; e9 = b9;
elseif rdd == 1
    e1=get(handles.checkbox30,'value');e2=get(handles.checkbox31,'value');e3=get(handles.checkbox32,'value');
    e4=get(handles.checkbox33,'value');e5=get(handles.checkbox34,'value');e6=get(handles.checkbox35,'value');
    e7=get(handles.checkbox36,'value');e8=get(handles.checkbox37,'value');e9=get(handles.checkbox38,'value');
end

if a0 == 0 || a1 == 0 || a2 == 0 || a3 == 0 || d0 == 0 || d1 == 0 || d2 == 0 || d3 == 0
    msgbox('With this number of coefficients, you can not do 3D reconstruction in the next step. You must select at least a0-a3 and d0-d3 !!','warning','warn')
end

a = [a0 a1 a2 a3 a4 a5 a6 a7 a8 a9]';
b = [1 b1 b2 b3 b4 b5 b6 b7 b8 b9 ]';
d = [d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 ]';
e = [1 e1 e2 e3 e4 e5 e6 e7 e8 e9 ]';
if rdd == 1
    if (sum(a)+sum(b) + sum(d)+sum(e) - 2) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)+sum(e) - 2) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)+sum(e) - 2)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
elseif rdi == 1
    if (sum(a)+sum(b)+sum(d) - 1) > 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,please select more GCPs !!'],'Error','error')
        error('Not enough GCPs.')
    elseif (sum(a)+sum(b) + sum(d)-1) == 2*length(gcp)
        msgbox(['df = ',num2str(2*length(gcp) - (sum(a)+sum(b) + sum(d)-1)),'  ,It is better to choose more GCPs !!'],'warning','warn')
    end
end

power_a = three_D_power(a);
power_b = three_D_power(b);
power_d = three_D_power(d);
power_e = three_D_power(e);


r=[];c=[];
A = zeros(length(gcp),length(a));
B = zeros(length(gcp),length(b));
D = zeros(length(gcp),length(d));
E = zeros(length(gcp),length(e));
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    A(i,:) = X.^power_a(:,1)'.*Y.^power_a(:,2)'.*Z.^power_a(:,3)';
    B(i,:) = -r(i,1)* X.^power_b(:,1)'.*Y.^power_b(:,2)'.*Z.^power_b(:,3)';
    D(i,:) = X.^power_d(:,1)'.*Y.^power_d(:,2)'.*Z.^power_d(:,3)';
    E(i,:) = -c(i,1)* X.^power_e(:,1)'.*Y.^power_e(:,2)'.*Z.^power_e(:,3)';
end

A(:,a == 0) = [];
B(:,b == 0) = []; B(:,1) = [];
D(:,d == 0) = [];
E(:,e == 0) = []; E(:,1) = [];

Wr = eye(length(gcp)); Wc = eye(length(gcp));
c = x_gcp; r = y_gcp;
itr = 1; Cap0 = 0;
abCap0 = 0; deCap0 = 0;
while 1

    if rdd == 1
        
        Sr = [A , B];
        abCap = inv(Sr'*Wr*Wr*Sr)*Sr'*Wr*Wr*r;
        aCap = abCap(1:sum(a));
        bCap = abCap(sum(a)+1:end);
        
        Sc = [D , E];
        deCap = inv(Sc'*Wc*Wc*Sc)*Sc'*Wc*Wc*c; 
        dCap = deCap(1:sum(d));
        eCap = deCap(sum(d)+1:end);
        n_morm = abs([abCap-abCap0;deCap-deCap0]);
        abCap0 = abCap;
        deCap0 = deCap;
        
    elseif rdi == 1
        
        S = [A , zeros(length(gcp),sum(d)) , B;
            zeros(length(gcp),sum(a)) , D , E];
        W = diag([diag(Wr);diag(Wc)]);
        dl = [r;c];
        Cap = inv(S'*W*W*S)*S'*W*W*dl;
        
        aCap = Cap(1:sum(a));
        dCap = Cap(sum(a)+1:sum(a)+sum(d));
        bCap = Cap(sum(a)+sum(d)+1:end);
        eCap = bCap;
        n_morm = abs(Cap-Cap0);
        Cap0 = Cap;
        
    end
    
    power_a(a ~= 0,4) = aCap;
    power_b(b ~= 0,4) = [1;bCap];
    power_d(d ~= 0,4) = dCap;
    power_e(e ~= 0,4) = [1;eCap];
    
    r=[];c=[];Wr = zeros(length(gcp)); Wc = zeros(length(gcp));
    r0 = []; c0 = [];
    for i = 1:length(gcp)
        X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
        c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
        
        Wr(i,i) = 1/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
        Wc(i,i) = 1/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    end
    
    if n_morm<1e-8
        break
    elseif isnan(n_morm)
        msgbox('The system is divergent !!','Error','error')
        error('The system is divergent !!')
    elseif itr == 500
        msgbox('the system does not converge. Number of iteration 500 !!','Error','error')
        error('the system does not converge. Number of iteration 500 !!')
    end
    itr = itr + 1;
    
end
set(handles.text29,'string',num2str(itr))

r=[];c=[];
for i = 1:length(gcp)
    X = X_gcp(i); Y = Y_gcp(i); Z = Z_gcp(i);
    c(i,1) = x_gcp(i); r(i,1) = y_gcp(i);
    
    r_com_GCP(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com_GCP(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr_GCP = r_com_GCP - r;
dc_GCP = c_com_GCP - c;

%% Accuracy assessment

r=[];c=[];
for i = 1:length(icp)
    X = X_icp(i); Y = Y_icp(i); Z = Z_icp(i);
    c(i,1) = x_icp(i); r(i,1) = y_icp(i);
    
    r_com(i,1) = (power_a(:,4)'* (X.^power_a(:,1).*Y.^power_a(:,2).*Z.^power_a(:,3)))/( power_b(:,4)'* (X.^power_b(:,1).*Y.^power_b(:,2).*Z.^power_b(:,3)) );
    c_com(i,1) = (power_d(:,4)'* (X.^power_d(:,1).*Y.^power_d(:,2).*Z.^power_d(:,3)))/( power_e(:,4)'* (X.^power_e(:,1).*Y.^power_e(:,2).*Z.^power_e(:,3)) );
    
end
dr = r_com - r;
dc = c_com - c;
RMSE = sqrt(sum(dc.^2 + dr.^2)/length(dr));
set(handles.text27,'string',num2str(RMSE))

% quiver
figure
plot(image(ismember(image(:,2),gcp),3),image(ismember(image(:,2),gcp),4),'^b','MarkerFaceColor','blue')
text(image(ismember(image(:,2),gcp),3)+0.0008,image(ismember(image(:,2),gcp),4)+0.0008,num2str(gcp),'color','blue','FontSize',12)
hold on
plot(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),'sr','MarkerFaceColor','red')
text(image(ismember(image(:,2),icp),3)+0.0008,image(ismember(image(:,2),icp),4)+0.0008,num2str(icp),'color','red','FontSize',12)
quiver(image(ismember(image(:,2),icp),3),image(ismember(image(:,2),icp),4),dc,dr,'r'),title(['\color{blue} RMSE = ',num2str(RMSE)]),legend('GCP','ICP')
% table
names = {'Coeff 0','Coeff 1','Coeff 2','Coeff 3','Coeff 4','Coeff 5','Coeff 6','Coeff 7','Coeff 8','Coeff 9'};
a_Coefficients = zeros(size(a)); b_Coefficients = zeros(size(b)); d_Coefficients = zeros(size(d)); e_Coefficients = zeros(size(e));
a_Coefficients(a == 1,1) = aCap;
b_Coefficients(b == 1,1) = [1;bCap];
d_Coefficients(d == 1,1) = dCap;
e_Coefficients(e == 1,1) = [1;eCap];
T_Coefficients = table(a_Coefficients,b_Coefficients,d_Coefficients,e_Coefficients,'rownames',names);

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
set(handles.pushbutton10,'enable','on')

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_Coefficients T_rc T_sc_off T_rc_GCP
add = get(handles.edit1,'string');
fi1 = find(add == '\');
fi2 = find(add == '.');
spe = add(fi1(end)+1:fi2 - 1);
myfile = ['3D Rational Function Coefficients(Iterative solution 2) ',spe,'.xlsx'];
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_Coefficients,[masir,'\3D Rational Function Coefficients(Iterative solution 2) ',spe,'.xlsx'],'sheet','Coefficients','WriteRowNames',true)
    writetable(T_rc,[masir,'\3D Rational Function Coefficients(Iterative solution 2) ',spe,'.xlsx'],'sheet','Coordinates')
    writetable(T_sc_off,[masir,'\3D Rational Function Coefficients(Iterative solution 2) ',spe,'.xlsx'],'sheet','offset-scale','WriteRowNames',true)
    writetable(T_rc_GCP,[masir,'\3D Rational Function Coefficients(Iterative solution 2) ',spe,'.xlsx'],'sheet','dr-dc GCP')
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end
