function varargout = Newton(varargin)
% NEWTON MATLAB code for Newton.fig
%      NEWTON, by itself, creates a new NEWTON or raises the existing
%      singleton*.
%
%      H = NEWTON returns the handle to a new NEWTON or the handle to
%      the existing singleton*.
%
%      NEWTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON.M with the given input arguments.
%
%      NEWTON('Property','Value',...) creates a new NEWTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Newton_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Newton_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Newton

% Last Modified by GUIDE v2.5 18-Dec-2018 12:12:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Newton_OpeningFcn, ...
                   'gui_OutputFcn',  @Newton_OutputFcn, ...
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


% --- Executes just before Newton is made visible.
function Newton_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Newton (see VARARGIN)
movegui('center');
% Choose default command line output for Newton
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Newton wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui('center');

% --- Outputs from this function are returned to the command line.
function varargout = Newton_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in N_Calcular.
function N_Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to N_Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x

cf=get(handles.funcion,'string');
f=inline(cf); 
dg=diff(cf,x); 
df=inline(dg);
ps0=str2double(get(handles.p0,'String'));
tol1=str2double(get(handles.tol,'String'));
N=str2double(get(handles.itermax,'String'));
h=0.0001;
P=[];
i=1;


while(i<=N)
    fx=(f(ps0+h)-f(ps0))/h;
    p=ps0-f(ps0)/fx;
    P(i)=p;
    if i==1
         newRow ={sprintf('%.7f',P(i)),sprintf('%.7f',f(p)),sprintf('%.7f',abs(p-ps0)),sprintf('%.7f',abs(p-ps0)/abs(p))};
         set(handles.tabla,'Data',newRow)
    end
    if i>1
         fprintf('%d \t%.7f\t%.7f\t%.7f\t%.7f\n',i,P(i),f(p),abs(p-ps0),abs(p-ps0)/abs(p));
  newRow ={sprintf('%.7f',P(i)),sprintf('%.7f',f(p)),sprintf('%.7f',abs(p-ps0)),sprintf('%.7f',abs(p-ps0)/abs(p))};
    oldData = get(handles.tabla,'Data');
    newData=[oldData; newRow];
    set(handles.tabla,'Data',newData)
    end
   
  
    if(abs(p-ps0)<tol1)
     
      break
    end
    i=i+1;
    ps0=p;
end
if(i>N)
    msgbox('Se excedio el numero maximo de iteraciones\n');
end




set(handles.raiz,'String',ps0);
set(handles.iter,'String',i);

% --- Executes on selection change in tabla.
function tabla_Callback(hObject, eventdata, handles)
% hObject    handle to tabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tabla contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tabla


% --- Executes during object creation, after setting all properties.
function tabla_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in N_Regresar.
function N_Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to N_Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes on button press in N_Borrar.
function N_Borrar_Callback(hObject, eventdata, handles)
% hObject    handle to N_Borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.funcion,'String','');
set(handles.p0,'String','');
set(handles.tol,'String','');
set(handles.raiz,'String','');
set(handles.iter,'String','');
set(handles.itermax,'String','');
set(handles.tabla, 'Data', cell(size(get(handles.tabla,'Data'))));
axes(handles.grafica);
cla('reset');

% --- Executes on button press in N_Graficar.
function N_Graficar_Callback(hObject, eventdata, handles)
% hObject    handle to N_Graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.grafica);
 x=str2double(get(handles.raiz,'String'));
        fx=get(handles.funcion,'String');
        hold off
        ezplot (fx);
        hold on
        grid on
        zoom on
        plot (x,subs(fx,x),'or');



function itermax_Callback(hObject, eventdata, handles)
% hObject    handle to itermax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of itermax as text
%        str2double(get(hObject,'String')) returns contents of itermax as a double


% --- Executes during object creation, after setting all properties.
function itermax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to itermax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
