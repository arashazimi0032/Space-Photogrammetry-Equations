function varargout = Inverse_three_d_Ploynomial(varargin)
% INVERSE_THREE_D_PLOYNOMIAL MATLAB code for Inverse_three_d_Ploynomial.fig
%      INVERSE_THREE_D_PLOYNOMIAL, by itself, creates a new INVERSE_THREE_D_PLOYNOMIAL or raises the existing
%      singleton*.
%
%      H = INVERSE_THREE_D_PLOYNOMIAL returns the handle to a new INVERSE_THREE_D_PLOYNOMIAL or the handle to
%      the existing singleton*.
%
%      INVERSE_THREE_D_PLOYNOMIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSE_THREE_D_PLOYNOMIAL.M with the given input arguments.
%
%      INVERSE_THREE_D_PLOYNOMIAL('Property','Value',...) creates a new INVERSE_THREE_D_PLOYNOMIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Inverse_three_d_Ploynomial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Inverse_three_d_Ploynomial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Inverse_three_d_Ploynomial

% Last Modified by GUIDE v2.5 23-Jul-2020 03:28:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Inverse_three_d_Ploynomial_OpeningFcn, ...
    'gui_OutputFcn',  @Inverse_three_d_Ploynomial_OutputFcn, ...
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


% --- Executes just before Inverse_three_d_Ploynomial is made visible.
function Inverse_three_d_Ploynomial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Inverse_three_d_Ploynomial (see VARARGIN)

% Choose default command line output for Inverse_three_d_Ploynomial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Inverse_three_d_Ploynomial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Inverse_three_d_Ploynomial_OutputFcn(hObject, eventdata, handles)
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
clear,clc,close(Inverse_three_d_Ploynomial)


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

power_r_I1 = three_D_power(a_I1);
power_c_I1 = three_D_power(b_I1);

image2(ismember(ground(:,1),icp_com_I2.ID),:) = [icp_com_I2.ID , icp_com_I2.column - icp_com_I2.dc , icp_com_I2.row - icp_com_I2.dr];
image2(ismember(ground(:,1),gcp_I2.ID),:) = [gcp_I2.ID , gcp_I2.column_GCP , gcp_I2.row_GCP];
a_I2 = coeff_I2.a_Coefficients ~= 0; a_coeff_I2 = coeff_I2.a_Coefficients;
b_I2 = coeff_I2.b_Coefficients ~= 0; b_coeff_I2 = coeff_I2.b_Coefficients;
power_r_I2 = three_D_power(a_I2);
power_c_I2 = three_D_power(b_I2);

% approximate value
app_vals = approximate_value(image1,image2,ground);


% 3D reconstruction
dp_rI1_x = diff_power(power_r_I1,a_coeff_I1,'x');
dp_rI1_y = diff_power(power_r_I1,a_coeff_I1,'y');
dp_rI1_z = diff_power(power_r_I1,a_coeff_I1,'z');

dp_cI1_x = diff_power(power_c_I1,b_coeff_I1,'x');
dp_cI1_y = diff_power(power_c_I1,b_coeff_I1,'y');
dp_cI1_z = diff_power(power_c_I1,b_coeff_I1,'z');

dp_rI2_x = diff_power(power_r_I2,a_coeff_I2,'x');
dp_rI2_y = diff_power(power_r_I2,a_coeff_I2,'y');
dp_rI2_z = diff_power(power_r_I2,a_coeff_I2,'z');

dp_cI2_x = diff_power(power_c_I2,b_coeff_I2,'x');
dp_cI2_y = diff_power(power_c_I2,b_coeff_I2,'y');
dp_cI2_z = diff_power(power_c_I2,b_coeff_I2,'z');
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
        
        A = [dp_rI1_x(:,4)'*(X1.^dp_rI1_x(:,1).*Y1.^dp_rI1_x(:,2).*Z1.^dp_rI1_x(:,3)) , dp_rI1_y(:,4)'*(X1.^dp_rI1_y(:,1).*Y1.^dp_rI1_y(:,2).*Z1.^dp_rI1_y(:,3)) , dp_rI1_z(:,4)'*(X1.^dp_rI1_z(:,1).*Y1.^dp_rI1_z(:,2).*Z1.^dp_rI1_z(:,3));
            dp_cI1_x(:,4)'*(X1.^dp_cI1_x(:,1).*Y1.^dp_cI1_x(:,2).*Z1.^dp_cI1_x(:,3)) , dp_cI1_y(:,4)'*(X1.^dp_cI1_y(:,1).*Y1.^dp_cI1_y(:,2).*Z1.^dp_cI1_y(:,3)) , dp_cI1_z(:,4)'*(X1.^dp_cI1_z(:,1).*Y1.^dp_cI1_z(:,2).*Z1.^dp_cI1_z(:,3));
            dp_rI2_x(:,4)'*(X2.^dp_rI2_x(:,1).*Y2.^dp_rI2_x(:,2).*Z2.^dp_rI2_x(:,3)) , dp_rI2_y(:,4)'*(X2.^dp_rI2_y(:,1).*Y2.^dp_rI2_y(:,2).*Z2.^dp_rI2_y(:,3)) , dp_rI2_z(:,4)'*(X2.^dp_rI2_z(:,1).*Y2.^dp_rI2_z(:,2).*Z2.^dp_rI2_z(:,3));
            dp_cI2_x(:,4)'*(X2.^dp_cI2_x(:,1).*Y2.^dp_cI2_x(:,2).*Z2.^dp_cI2_x(:,3)) , dp_cI2_y(:,4)'*(X2.^dp_cI2_y(:,1).*Y2.^dp_cI2_y(:,2).*Z2.^dp_cI2_y(:,3)) , dp_cI2_z(:,4)'*(X2.^dp_cI2_z(:,1).*Y2.^dp_cI2_z(:,2).*Z2.^dp_cI2_z(:,3))];
        
        A = A.*[1/sc_off_I1.Var1(4) , 1/sc_off_I1.Var1(5) , 1/sc_off_I1.Var1(6);
            1/sc_off_I1.Var1(4) , 1/sc_off_I1.Var1(5) , 1/sc_off_I1.Var1(6);
            1/sc_off_I2.Var1(4) , 1/sc_off_I2.Var1(5) , 1/sc_off_I2.Var1(6);
            1/sc_off_I2.Var1(4) , 1/sc_off_I2.Var1(5) , 1/sc_off_I2.Var1(6)];
        
        W = [a_coeff_I1'*(X1.^power_r_I1(:,1).*Y1.^power_r_I1(:,2).*Z1.^power_r_I1(:,3)) - r1;
            b_coeff_I1'*(X1.^power_c_I1(:,1).*Y1.^power_c_I1(:,2).*Z1.^power_c_I1(:,3)) - c1;
            a_coeff_I2'*(X2.^power_r_I2(:,1).*Y2.^power_r_I2(:,2).*Z2.^power_r_I2(:,3)) - r2;
            b_coeff_I2'*(X2.^power_c_I2(:,1).*Y2.^power_c_I2(:,2).*Z2.^power_c_I2(:,3)) - c2];
        
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
myfile = 'Global polynomial 3D Reconstruction.xlsx';
if isfile(myfile)
    delete(myfile)
end
masir=uigetdir;
if masir~=0
    wb=waitbar(0,'Please wait...');
    writetable(T_3D_rec,[masir,'\Global polynomial 3D Reconstruction.xlsx'],'sheet','Ground Coordinates')
    
    for i=1:1000
        waitbar(i/1000);
    end
    pause(0.1)
    close(wb)
end
