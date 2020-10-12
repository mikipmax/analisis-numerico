function varargout = Taylor(varargin)
% TAYLOR MATLAB code for Taylor.fig
%      TAYLOR, by itself, creates a new TAYLOR or raises the existing
%      singleton*.
%
%      H = TAYLOR returns the handle to a new TAYLOR or the handle to
%      the existing singleton*.
%
%      TAYLOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAYLOR.M with the given input arguments.
%
%      TAYLOR('Property','Value',...) creates a new TAYLOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Taylor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Taylor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Taylor

% Last Modified by GUIDE v2.5 19-Dec-2018 21:12:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Taylor_OpeningFcn, ...
                   'gui_OutputFcn',  @Taylor_OutputFcn, ...
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


% --- Executes just before Taylor is made visible.
function Taylor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Taylor (see VARARGIN)
% centrar la ventana
%---------------------------------------------------------
scrsz=get(0,'ScreenSize');
pos_act=get(gcf, 'Position');
xr=scrsz(3)- pos_act(3);
xp=round(xr/2);
yr=scrsz(4)- pos_act(4);
yp=round(yr/2);
set(gcf, 'Position',[xp yp pos_act(3) pos_act(4)]);
%---------------------------------------------------------

% Choose default command line output for Taylor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Taylor wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.txtRes,'string','')

% --- Outputs from this function are returned to the command line.
function varargout = Taylor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtFuncion_Callback(hObject, eventdata, handles)
% hObject    handle to txtFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFuncion as text
%        str2double(get(hObject,'String')) returns contents of txtFuncion as a double


% --- Executes during object creation, after setting all properties.
function txtFuncion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtN_Callback(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtN as text
%        str2double(get(hObject,'String')) returns contents of txtN as a double


% --- Executes during object creation, after setting all properties.
function txtN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtC_Callback(hObject, eventdata, handles)
% hObject    handle to txtC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtC as text
%        str2double(get(hObject,'String')) returns contents of txtC as a double


% --- Executes during object creation, after setting all properties.
function txtC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txtResultado.
function txtResultado_Callback(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txtResultado contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txtResultado


% --- Executes during object creation, after setting all properties.
function txtResultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCalcular.
function btnCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to btnCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
syms x;
fun=get(handles.txtFuncion,'string');
n=str2num(get(handles.txtN,'string'));
x1=str2num(get(handles.txtC,'string'));
e=str2num(get(handles.txtValor,'string'));
if n>0
     v1=0;
 result=0;
 result1=0;
for i=0:n    
     D = diff(fun,x,i);
%      d1=inline(D); %#ok<DINLN>
%      d=d1(x1);
     dxE=subs(D,x,x1);
     
    
     v1= v1+((dxE*(x-x1)^i)/factorial(i));  
   char((dxE*(x-x1)^i)/factorial(i))
     if ((dxE*(x-x1)^i))~=0
        result=strcat('(',char(dxE*(x-x1)^i),'/',num2str(i),'!)','+')
       result1=strcat(result1,result)
     end
     
    re=result1(1:end-1)
    
     
end

g1=subs(v1,x,e);

h=vpa(g1);

set(handles.txtRes,'string',re);
set(handles.txtAprox,'string',sprintf('%.7f',h));

global v2;
v2=v1;
disp(v1);

axes(handles.grafica);
cla('reset');
    global v2;  
      axes(handles.grafica);
 v2;
       fx=get(handles.txtFuncion,'String');
       x=str2double(get(handles.txtValor,'String'));
  plot (x,subs(v2,x),'or');
   hold on ;
   grid on;
   zoom on;
       
       
       ezplot(fx);
       hL = ezplot(fx);
       set(hL,'Color','r','LineWidth',1.5);
       hold on;
       ezplot (v2);
       hL2 = ezplot(v2);
       set(hL2,'Color','b','LineWidth',1.5,'LineStyle','-.');
else
    msgbox('Ingrese un grado mayor que 0')
end
catch
    msgbox('Error:Causa más común, división por cero');
end

% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtFuncion,'string','');
set(handles.txtN,'string','');
set(handles.txtC,'string','');
set(handles.txtAprox,'string','');
set(handles.txtRes,'string','');
set(handles.txtValor,'string','');
axes(handles.grafica);
cla('reset');


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtValor_Callback(hObject, eventdata, handles)
% hObject    handle to txtValor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtValor as text
%        str2double(get(hObject,'String')) returns contents of txtValor as a double


% --- Executes during object creation, after setting all properties.
function txtValor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtValor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_regresar.
function btn_regresar_Callback(hObject, eventdata, handles)
% hObject    handle to btn_regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close



% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)

        
          
     

        
        
        
        



function hEditbox_Callback(hObject, eventdata, handles)
% hObject    handle to hEditbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hEditbox as text
%        str2double(get(hObject,'String')) returns contents of hEditbox as a double


% --- Executes during object creation, after setting all properties.
function hEditbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hEditbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txtRes.
function txtRes_Callback(hObject, eventdata, handles)
% hObject    handle to txtRes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txtRes contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txtRes


% --- Executes during object creation, after setting all properties.
function txtRes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtRes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
