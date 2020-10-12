function varargout = PuntoFijo(varargin)
% PUNTOFIJO MATLAB code for PuntoFijo.fig
%      PUNTOFIJO, by itself, creates a new PUNTOFIJO or raises the existing
%      singleton*.
%
%      H = PUNTOFIJO returns the handle to a new PUNTOFIJO or the handle to
%      the existing singleton*.
%
%      PUNTOFIJO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUNTOFIJO.M with the given input arguments.
%
%      PUNTOFIJO('Property','Value',...) creates a new PUNTOFIJO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PuntoFijo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PuntoFijo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PuntoFijo

% Last Modified by GUIDE v2.5 25-Dec-2018 20:18:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PuntoFijo_OpeningFcn, ...
                   'gui_OutputFcn',  @PuntoFijo_OutputFcn, ...
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


% --- Executes just before PuntoFijo is made visible.
function PuntoFijo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PuntoFijo (see VARARGIN)

% Choose default command line output for PuntoFijo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PuntoFijo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PuntoFijo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double


% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fdesp_Callback(hObject, eventdata, handles)
% hObject    handle to fdesp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fdesp as text
%        str2double(get(hObject,'String')) returns contents of fdesp as a double


% --- Executes during object creation, after setting all properties.
function fdesp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fdesp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p0_Callback(hObject, eventdata, handles)
% hObject    handle to p0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p0 as text
%        str2double(get(hObject,'String')) returns contents of p0 as a double


% --- Executes during object creation, after setting all properties.
function p0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tol_Callback(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tol as text
%        str2double(get(hObject,'String')) returns contents of tol as a double


% --- Executes during object creation, after setting all properties.
function tol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter_Callback(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter as text
%        str2double(get(hObject,'String')) returns contents of iter as a double


% --- Executes during object creation, after setting all properties.
function iter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function raiz_Callback(hObject, eventdata, handles)
% hObject    handle to raiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of raiz as text
%        str2double(get(hObject,'String')) returns contents of raiz as a double


% --- Executes during object creation, after setting all properties.
function raiz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to raiz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter1_Callback(hObject, eventdata, handles)
% hObject    handle to iter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter1 as text
%        str2double(get(hObject,'String')) returns contents of iter1 as a double


% --- Executes during object creation, after setting all properties.
function iter1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in P_Regresar.
function P_Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to P_Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes on button press in P_Borrar.
function P_Borrar_Callback(hObject, eventdata, handles)
% hObject    handle to P_Borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.funcion,'String','');
set(handles.p0,'String','');
set(handles.tol,'String','');
set(handles.iter,'String','');
set(handles.raiz,'String','');
set(handles.iter1,'String','');
set(handles.tab, 'Data', cell(size(get(handles.tab,'Data'))));
axes(handles.grafica);
cla('reset');

% --- Executes on button press in P_Calcular.
function P_Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to P_Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
   set(handles.raiz,'String','');  
f=get(handles.funcion,'String');
p0=str2num(get(handles.p0,'String'));
Tol=str2num(get(handles.tol,'String'));
N=str2num(get(handles.iter,'String'));
f=inline(get(handles.funcion,'String'));
P=[];
i=1;
texto=[];
while(i<=N )
    p=f(p0);
    P(i)=p; 
    Error=abs(p-p0);
    ErrorR=Error/abs(p);
     
     if i==1
      newRow ={sprintf('%.7f',P(i)),sprintf('%.7f',f(p)),sprintf('%.7f',ErrorR),sprintf('%.7f',Error)};
      set(handles.tab,'Data',newRow)
     end
     if i>1
      newRow ={sprintf('%.7f',P(i)),sprintf('%.7f',f(p)),sprintf('%.7f',ErrorR),sprintf('%.7f',Error)};
    oldData = get(handles.tab,'Data');
    newData=[oldData; newRow];
    set(handles.tab,'Data',newData)
     end
  
    if(Error<Tol)
       set(handles.raiz,'String',num2str(p,'%.7f'));  
      break
    end    
    i=i+1;
    p0=p;         
end

 set(handles.iter1,'String',num2str(i)) 
if(i>N)
    if p==-Inf||p==Inf 
    msgbox('DIVERGE')
    end
   
    msgbox('Se excedio el numero maximo de iteraciones\n');
     set(handles.raiz,'String',num2str(p,'%.7f'));

    
end
axes(handles.grafica);
     x=str2double(get(handles.raiz,'String'));
        fx=get(handles.funcion,'String');
        hold off
        ezplot (fx);
        hold on
        grid on
        ezplot('x')
        hold on
        zoom on
        plot (x,subs(fx,x),'or');
catch
end
% --- Executes on button press in P_Graficar.


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

%syms x y
%solve('0==x^2+y^2',x)
