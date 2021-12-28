function varargout = Space_Photogrametry(varargin)
% SPACE_PHOTOGRAMETRY MATLAB code for Space_Photogrametry.fig
%      SPACE_PHOTOGRAMETRY, by itself, creates a new SPACE_PHOTOGRAMETRY or raises the existing
%      singleton*.
%
%      H = SPACE_PHOTOGRAMETRY returns the handle to a new SPACE_PHOTOGRAMETRY or the handle to
%      the existing singleton*.
%
%      SPACE_PHOTOGRAMETRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPACE_PHOTOGRAMETRY.M with the given input arguments.
%
%      SPACE_PHOTOGRAMETRY('Property','Value',...) creates a new SPACE_PHOTOGRAMETRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Space_Photogrametry_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Space_Photogrametry_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Space_Photogrametry

% Last Modified by GUIDE v2.5 12-Aug-2020 23:52:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Space_Photogrametry_OpeningFcn, ...
                   'gui_OutputFcn',  @Space_Photogrametry_OutputFcn, ...
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


% --- Executes just before Space_Photogrametry is made visible.
function Space_Photogrametry_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Space_Photogrametry (see VARARGIN)

% Choose default command line output for Space_Photogrametry
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
f1 = imread('logo.png');
f2 = imread('sp.jpg');
axes(handles.axes1)
imshow(f2)
% UIWAIT makes Space_Photogrametry wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Space_Photogrametry_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function tow_D_interpolative_models_Callback(hObject, eventdata, handles)
% hObject    handle to tow_D_interpolative_models (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Polynomial_Callback(hObject, eventdata, handles)
% hObject    handle to Polynomial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
polynomial

% --------------------------------------------------------------------
function tow_D_projective_Callback(hObject, eventdata, handles)
% hObject    handle to tow_D_projective (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
two_d_projective

% --------------------------------------------------------------------
function three_D_interpolative_models_Callback(hObject, eventdata, handles)
% hObject    handle to three_D_interpolative_models (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function three_D_Ploynomial_Callback(hObject, eventdata, handles)
% hObject    handle to three_D_Ploynomial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Rational_models_Callback(hObject, eventdata, handles)
% hObject    handle to Rational_models (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear,clc,close all


% --------------------------------------------------------------------
function Forward_model_Callback(hObject, eventdata, handles)
% hObject    handle to Forward_RF_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
three_d_Ploynomial

% --------------------------------------------------------------------
function Inverse_model_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse_RF_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfile('3D Global polynomial Coefficients image1.xlsx') && isfile('3D Global polynomial Coefficients image2.xlsx')
    Inverse_three_d_Ploynomial
else
    CreateStruct.Interpreter = 'tex';
    CreateStruct.WindowStyle  = 'modal';
    msgbox('\fontsize{12}\color{blue}You must first run the forward model on both images and save the outputs so that you can run the reverse model.','Error','Error',CreateStruct)
end


% --------------------------------------------------------------------
function Forward_RF_model_Callback(hObject, eventdata, handles)
% hObject    handle to Forward_RF_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Forward_RFM

% --------------------------------------------------------------------
function Inverse_RF_model_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse_RF_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfile('3D Rational Function Coefficients(Direct solution) image1.xlsx') && (isfile('3D Rational Function Coefficients(Direct solution) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 1) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 2) image2.xlsx'))
    Inverse_RFM
elseif isfile('3D Rational Function Coefficients(Iterative solution 1) image1.xlsx') && (isfile('3D Rational Function Coefficients(Direct solution) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 1) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 2) image2.xlsx'))
    Inverse_RFM
elseif isfile('3D Rational Function Coefficients(Iterative solution 2) image1.xlsx') && (isfile('3D Rational Function Coefficients(Direct solution) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 1) image2.xlsx') || isfile('3D Rational Function Coefficients(Iterative solution 2) image2.xlsx'))
    Inverse_RFM
else
    CreateStruct.Interpreter = 'tex';
    CreateStruct.WindowStyle  = 'modal';
    msgbox('\fontsize{12}\color{blue}You must first run the forward model on both images and save the outputs so that you can run the reverse model.','Error','Error',CreateStruct)
end


% --------------------------------------------------------------------
function three_D_Parametric_Models_Callback(hObject, eventdata, handles)
% hObject    handle to three_D_Parametric_Models (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Orbital_Parameters_Model_Callback(hObject, eventdata, handles)
% hObject    handle to Orbital_Parameters_Model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Orbital_Parameters_Model
