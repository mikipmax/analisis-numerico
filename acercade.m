function varargout = acercade(varargin)
% ACERCADE MATLAB code for acercade.fig
%      ACERCADE, by itself, creates a new ACERCADE or raises the existing
%      singleton*.
%
%      H = ACERCADE returns the handle to a new ACERCADE or the handle to
%      the existing singleton*.
%
%      ACERCADE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACERCADE.M with the given input arguments.
%
%      ACERCADE('Property','Value',...) creates a new ACERCADE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before acercade_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to acercade_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help acercade

% Last Modified by GUIDE v2.5 18-Dec-2018 02:58:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @acercade_OpeningFcn, ...
                   'gui_OutputFcn',  @acercade_OutputFcn, ...
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


% --- Executes just before acercade is made visible.
function acercade_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to acercade (see VARARGIN)

% Choose default command line output for acercade
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes acercade wait for user response (see UIRESUME)
% uiwait(handles.figure1);
a=imread('acerca.jpg')
image(a)
axis off

% --- Outputs from this function are returned to the command line.
function varargout = acercade_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1

