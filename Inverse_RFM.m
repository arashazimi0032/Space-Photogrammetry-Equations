function varargout = Inverse_RFM(varargin)
% INVERSE_RFM MATLAB code for Inverse_RFM.fig
%      INVERSE_RFM, by itself, creates a new INVERSE_RFM or raises the existing
%      singleton*.
%
%      H = INVERSE_RFM returns the handle to a new INVERSE_RFM or the handle to
%      the existing singleton*.
%
%      INVERSE_RFM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSE_RFM.M with the given input arguments.
%
%      INVERSE_RFM('Property','Value',...) creates a new INVERSE_RFM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Inverse_RFM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Inverse_RFM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Inverse_RFM

% Last Modified by GUIDE v2.5 11-Aug-2020 23:01:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Inverse_RFM_OpeningFcn, ...
    'gui_OutputFcn',  @Inverse_RFM_OutputFcn, ...
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


% --- Executes just before Inverse_RFM is made visible.
function Inverse_RFM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Inverse_RFM (see VARARGIN)

% Choose default command line output for Inverse_RFM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Inverse_RFM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Inverse_RFM_OutputFcn(hObject, eventdata, handles)
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
[FileName,PathName]=uigetfile('.xlsx');
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
[FileName,PathName]=uigetfile('.xlsx');
if FileName ~= 0
    set(handles.edit2,'string',[PathName,FileName])
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close(Inverse_RFM)


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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FileName = 0;
[FileName,PathName]=uigetfile('.txt');
if FileName ~= 0
    set(handles.edit3,'string',[PathName,FileName])
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_3D_rec
add_coeff_I1 = get(handles.edit1,'string');
add_coeff_I2 = get(handles.edit2,'string');
add_ground = get(handles.edit3,'string');

if isempty(add_coeff_I1) || isempty(add_coeff_I2) || isempty(add_ground)
    msgbox('please select files !!','Error','error')
    error('please select files.')
end

coeff_I1 = readtable(add_coeff_I1,'sheet','Coefficients');
icp_com_I1 = readtable(add_coeff_I1,'sheet','Coordinates');
sc_off_I1 = readtable(add_coeff_I1,'sheet','offset-scale');
gcp_I1 = readtable(add_coeff_I1,'sheet','dr-dc GCP');

coeff_I2 = readtable(add_coeff_I2,'sheet','Coefficients');
icp_com_I2 = readtable(add_coeff_I2,'sheet','Coordinates');
sc_off_I2 = readtable(add_coeff_I2,'sheet','offset-scale');
gcp_I2 = readtable(add_coeff_I2,'sheet','dr-dc GCP');

ground = load(add_ground);
ground=[ground(:,1),CT2UTM(ground(:,2:4))];

image1 = zeros(size(ground,1),3);
image2 = zeros(size(ground,1),3);

image1(ismember(ground(:,1),icp_com_I1.ID),:) = [icp_com_I1.ID , icp_com_I1.column - icp_com_I1.dc , icp_com_I1.row - icp_com_I1.dr];
image1(ismember(ground(:,1),gcp_I1.ID),:) = [gcp_I1.ID , gcp_I1.column_GCP , gcp_I1.row_GCP];
a_I1 = coeff_I1.a_Coefficients ~= 0; a_coeff_I1 = coeff_I1.a_Coefficients;
b_I1 = coeff_I1.b_Coefficients ~= 0; b_coeff_I1 = coeff_I1.b_Coefficients;
d_I1 = coeff_I1.d_Coefficients ~= 0; d_coeff_I1 = coeff_I1.d_Coefficients;
e_I1 = coeff_I1.e_Coefficients ~= 0; e_coeff_I1 = coeff_I1.e_Coefficients;

power_a_I1 = three_D_power(a_I1);
power_b_I1 = three_D_power(b_I1);
power_d_I1 = three_D_power(d_I1);
power_e_I1 = three_D_power(e_I1);

image2(ismember(ground(:,1),icp_com_I2.ID),:) = [icp_com_I2.ID , icp_com_I2.column - icp_com_I2.dc , icp_com_I2.row - icp_com_I2.dr];
image2(ismember(ground(:,1),gcp_I2.ID),:) = [gcp_I2.ID , gcp_I2.column_GCP , gcp_I2.row_GCP];
a_I2 = coeff_I2.a_Coefficients ~= 0; a_coeff_I2 = coeff_I2.a_Coefficients;
b_I2 = coeff_I2.b_Coefficients ~= 0; b_coeff_I2 = coeff_I2.b_Coefficients;
d_I2 = coeff_I2.d_Coefficients ~= 0; d_coeff_I2 = coeff_I2.d_Coefficients;
e_I2 = coeff_I2.e_Coefficients ~= 0; e_coeff_I2 = coeff_I2.e_Coefficients;

power_a_I2 = three_D_power(a_I2);
power_b_I2 = three_D_power(b_I2);
power_d_I2 = three_D_power(d_I2);
power_e_I2 = three_D_power(e_I2);

% approximate value
app_vals = approximate_value(image1,image2,ground);


% 3D reconstruction
% -------------- image 1 -------------
dp_aI1_x = diff_power(power_a_I1,a_coeff_I1,'x');
dp_bI1_x = diff_power(power_b_I1,b_coeff_I1,'x');

dp_aI1_y = diff_power(power_a_I1,a_coeff_I1,'y');
dp_bI1_y = diff_power(power_b_I1,b_coeff_I1,'y');

dp_aI1_z = diff_power(power_a_I1,a_coeff_I1,'z');
dp_bI1_z = diff_power(power_b_I1,b_coeff_I1,'z');



dp_dI1_x = diff_power(power_d_I1,d_coeff_I1,'x');
dp_eI1_x = diff_power(power_e_I1,e_coeff_I1,'x');

dp_dI1_y = diff_power(power_d_I1,d_coeff_I1,'y');
dp_eI1_y = diff_power(power_e_I1,e_coeff_I1,'y');

dp_dI1_z = diff_power(power_d_I1,d_coeff_I1,'z');
dp_eI1_z = diff_power(power_e_I1,e_coeff_I1,'z');


% -------------- image 2 -------------
dp_aI2_x = diff_power(power_a_I2,a_coeff_I2,'x');
dp_bI2_x = diff_power(power_b_I2,b_coeff_I2,'x');

dp_aI2_y = diff_power(power_a_I2,a_coeff_I2,'y');
dp_bI2_y = diff_power(power_b_I2,b_coeff_I2,'y');

dp_aI2_z = diff_power(power_a_I2,a_coeff_I2,'z');
dp_bI2_z = diff_power(power_b_I2,b_coeff_I2,'z');



dp_dI2_x = diff_power(power_d_I2,d_coeff_I2,'x');
dp_eI2_x = diff_power(power_e_I2,e_coeff_I2,'x');

dp_dI2_y = diff_power(power_d_I2,d_coeff_I2,'y');
dp_eI2_y = diff_power(power_e_I2,e_coeff_I2,'y');

dp_dI2_z = diff_power(power_d_I2,d_coeff_I2,'z');
dp_eI2_z = diff_power(power_e_I2,e_coeff_I2,'z');

for i = 1:size(image1,1)
    it = 0;
    while 1
        X1 = (app_vals(i,2) - sc_off_I1.Var1(1))/sc_off_I1.Var1(4);
        Y1 = (app_vals(i,3) - sc_off_I1.Var1(2))/sc_off_I1.Var1(5);
        Z1 = (app_vals(i,4) - sc_off_I1.Var1(3))/sc_off_I1.Var1(6);
        
        X2 = (app_vals(i,2) - sc_off_I2.Var1(1))/sc_off_I2.Var1(4);
        Y2 = (app_vals(i,3) - sc_off_I2.Var1(2))/sc_off_I2.Var1(5);
        Z2 = (app_vals(i,4) - sc_off_I2.Var1(3))/sc_off_I2.Var1(6);
        
        r1 = image1(i,3); c1 = image1(i,2);
        r2 = image2(i,3); c2 = image2(i,2);
        
        SrI1 = a_coeff_I1'*(X1.^power_a_I1(:,1).*Y1.^power_a_I1(:,2).*Z1.^power_a_I1(:,3));
        MrI1 = b_coeff_I1'*(X1.^power_b_I1(:,1).*Y1.^power_b_I1(:,2).*Z1.^power_b_I1(:,3));
        ScI1 = d_coeff_I1'*(X1.^power_d_I1(:,1).*Y1.^power_d_I1(:,2).*Z1.^power_d_I1(:,3));
        McI1 = e_coeff_I1'*(X1.^power_e_I1(:,1).*Y1.^power_e_I1(:,2).*Z1.^power_e_I1(:,3));
        
        SrI2 = a_coeff_I2'*(X2.^power_a_I2(:,1).*Y2.^power_a_I2(:,2).*Z2.^power_a_I2(:,3));
        MrI2 = b_coeff_I2'*(X2.^power_b_I2(:,1).*Y2.^power_b_I2(:,2).*Z2.^power_b_I2(:,3));
        ScI2 = d_coeff_I2'*(X2.^power_d_I2(:,1).*Y2.^power_d_I2(:,2).*Z2.^power_d_I2(:,3));
        McI2 = e_coeff_I2'*(X2.^power_e_I2(:,1).*Y2.^power_e_I2(:,2).*Z2.^power_e_I2(:,3));
        
        A1 = [(dp_aI1_x(:,4)'*(X1.^dp_aI1_x(:,1).*Y1.^dp_aI1_x(:,2).*Z1.^dp_aI1_x(:,3)))*MrI1 , (dp_aI1_y(:,4)'*(X1.^dp_aI1_y(:,1).*Y1.^dp_aI1_y(:,2).*Z1.^dp_aI1_y(:,3)))*MrI1 , (dp_aI1_z(:,4)'*(X1.^dp_aI1_z(:,1).*Y1.^dp_aI1_z(:,2).*Z1.^dp_aI1_z(:,3)))*MrI1;
            (dp_dI1_x(:,4)'*(X1.^dp_dI1_x(:,1).*Y1.^dp_dI1_x(:,2).*Z1.^dp_dI1_x(:,3)))*McI1 , (dp_dI1_y(:,4)'*(X1.^dp_dI1_y(:,1).*Y1.^dp_dI1_y(:,2).*Z1.^dp_dI1_y(:,3)))*McI1 , (dp_dI1_z(:,4)'*(X1.^dp_dI1_z(:,1).*Y1.^dp_dI1_z(:,2).*Z1.^dp_dI1_z(:,3)))*McI1;
            (dp_aI2_x(:,4)'*(X2.^dp_aI2_x(:,1).*Y2.^dp_aI2_x(:,2).*Z2.^dp_aI2_x(:,3)))*MrI2 , (dp_aI2_y(:,4)'*(X2.^dp_aI2_y(:,1).*Y2.^dp_aI2_y(:,2).*Z2.^dp_aI2_y(:,3)))*MrI2 , (dp_aI2_z(:,4)'*(X2.^dp_aI2_z(:,1).*Y2.^dp_aI2_z(:,2).*Z2.^dp_aI2_z(:,3)))*MrI2;
            (dp_dI2_x(:,4)'*(X2.^dp_dI2_x(:,1).*Y2.^dp_dI2_x(:,2).*Z2.^dp_dI2_x(:,3)))*McI2 , (dp_dI2_y(:,4)'*(X2.^dp_dI2_y(:,1).*Y2.^dp_dI2_y(:,2).*Z2.^dp_dI2_y(:,3)))*McI2 , (dp_dI2_z(:,4)'*(X2.^dp_dI2_z(:,1).*Y2.^dp_dI2_z(:,2).*Z2.^dp_dI2_z(:,3)))*McI2];
        
        A2 = [(dp_bI1_x(:,4)'*(X1.^dp_bI1_x(:,1).*Y1.^dp_bI1_x(:,2).*Z1.^dp_bI1_x(:,3)))*SrI1 , (dp_bI1_y(:,4)'*(X1.^dp_bI1_y(:,1).*Y1.^dp_bI1_y(:,2).*Z1.^dp_bI1_y(:,3)))*SrI1 , (dp_bI1_z(:,4)'*(X1.^dp_bI1_z(:,1).*Y1.^dp_bI1_z(:,2).*Z1.^dp_bI1_z(:,3)))*SrI1;
            (dp_eI1_x(:,4)'*(X1.^dp_eI1_x(:,1).*Y1.^dp_eI1_x(:,2).*Z1.^dp_eI1_x(:,3)))*ScI1 , (dp_eI1_y(:,4)'*(X1.^dp_eI1_y(:,1).*Y1.^dp_eI1_y(:,2).*Z1.^dp_eI1_y(:,3)))*ScI1 , (dp_eI1_z(:,4)'*(X1.^dp_eI1_z(:,1).*Y1.^dp_eI1_z(:,2).*Z1.^dp_eI1_z(:,3)))*ScI1;
            (dp_bI2_x(:,4)'*(X2.^dp_bI2_x(:,1).*Y2.^dp_bI2_x(:,2).*Z2.^dp_bI2_x(:,3)))*SrI2 , (dp_bI2_y(:,4)'*(X2.^dp_bI2_y(:,1).*Y2.^dp_bI2_y(:,2).*Z2.^dp_bI2_y(:,3)))*SrI2 , (dp_bI2_z(:,4)'*(X2.^dp_bI2_z(:,1).*Y2.^dp_bI2_z(:,2).*Z2.^dp_bI2_z(:,3)))*SrI2;
            (dp_eI2_x(:,4)'*(X2.^dp_eI2_x(:,1).*Y2.^dp_eI2_x(:,2).*Z2.^dp_eI2_x(:,3)))*ScI2 , (dp_eI2_y(:,4)'*(X2.^dp_eI2_y(:,1).*Y2.^dp_eI2_y(:,2).*Z2.^dp_eI2_y(:,3)))*ScI2 , (dp_eI2_z(:,4)'*(X2.^dp_eI2_z(:,1).*Y2.^dp_eI2_z(:,2).*Z2.^dp_eI2_z(:,3)))*ScI2];
        
        M = [MrI1 , MrI1 , MrI1;
            McI1 , McI1 , McI1;
            MrI2 , MrI2 , MrI2;
            McI2 , McI2 , McI2].^2;
        
        A = (A1-A2)./M;
        
        A = A.*[1/sc_off_I1.Var1(4) , 1/sc_off_I1.Var1(5) , 1/sc_off_I1.Var1(6);
            1/sc_off_I1.Var1(4) , 1/sc_off_I1.Var1(5) , 1/sc_off_I1.Var1(6);
            1/sc_off_I2.Var1(4) , 1/sc_off_I2.Var1(5) , 1/sc_off_I2.Var1(6);
            1/sc_off_I2.Var1(4) , 1/sc_off_I2.Var1(5) , 1/sc_off_I2.Var1(6)];
        
        W = [SrI1/MrI1 - r1;
            ScI1/McI1 - c1;
            SrI2/MrI2 - r2;
            ScI2/McI2 - c2];
        
        deltaXYZ = -inv(A'*A)*A'*W;
        app_vals(i,2:4) = app_vals(i,2:4) + deltaXYZ';
        
        it = it + 1;
        if norm(deltaXYZ) < 1e-8
            break
        elseif it == 100
            msgbox('The coordinate calculation process is divergent !!','Error','error')
            break
        end
        
    end
    if it == 100
        error('The coordinate calculation process is divergent !!')
        break
    end
end

accurate_vals = app_vals;

dXYZ = [accurate_vals(:,1) , accurate_vals(:,2:4) - ground(:,2:4)];

dX = dXYZ(:,2);
dY = dXYZ(:,3);
dZ = dXYZ(:,4);

RMSE_X = sqrt(sum(dX.^2)/length(dX));
RMSE_Y = sqrt(sum(dY.^2)/length(dY));
RMSE_Z = sqrt(sum(dZ.^2)/length(dZ));

RMSE = sqrt(sum(dX.^2 + dY.^2 + dZ.^2)/length(dZ));

set(handles.text6,'string',num2str(RMSE_X))
set(handles.text9,'string',num2str(RMSE_Y))
set(handles.text12,'string',num2str(RMSE_Z))
set(handles.text15,'string',num2str(RMSE))

% quiver
figure,plot3(accurate_vals(:,2) , accurate_vals(:,3) , accurate_vals(:,4),'h','markerfacecolor','blue')
grid on,hold on
quiver3(accurate_vals(:,2) , accurate_vals(:,3) , accurate_vals(:,4) , dX , dY , dZ,'k'),title(['\color{blue} RMSE = ',num2str(RMSE),' m'])
ID = accurate_vals(:,1);
X = accurate_vals(:,2);
Y = accurate_vals(:,3);
Z = accurate_vals(:,4);
T_3D_rec = table(ID,X,Y,Z);
set(handles.pushbutton6,'enable','on')

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_3D_rec
myfile = 'Rational Function 3D Reconstruction.xlsx';
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_3D_rec,[masir,'\Rational Function 3D Reconstruction.xlsx'],'sheet','Ground Coordinates')
    
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end