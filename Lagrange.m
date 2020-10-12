function varargout = Lagrange(varargin)
% LAGRANGE MATLAB code for Lagrange.fig
%      LAGRANGE, by itself, creates a new LAGRANGE or raises the existing
%      singleton*.
%
%      H = LAGRANGE returns the handle to a new LAGRANGE or the handle to
%      the existing singleton*.
%
%      LAGRANGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAGRANGE.M with the given input arguments.
%
%      LAGRANGE('Property','Value',...) creates a new LAGRANGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Lagrange_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Lagrange_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Lagrange

% Last Modified by GUIDE v2.5 15-Dec-2018 15:51:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Lagrange_OpeningFcn, ...
    'gui_OutputFcn',  @Lagrange_OutputFcn, ...
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


% --- Executes just before Lagrange is made visible.
function Lagrange_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Lagrange (see VARARGIN)
set(handles.px,'BackgroundColor',[0.8 0.8 1]);
set(handles.py,'BackgroundColor',[0.8 0.8 1]);
% Choose default command line output for Lagrange
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Lagrange wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Lagrange_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in L_Calcular.
function L_Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to L_Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x
x=str2num(get(handles.px,'string'));
y=str2num(get(handles.py,'string'));
xx=str2num(get(handles.xi,'string'));


n=length(x);
if length(y)~=n,error('x e y deben ser la misma longitud');
end;
yi=0;pol='0';

for i=1:n
    producto=y(i);
    termino=num2str(y(i));
    for j=1:n
        if i~=j
            producto=producto*(xx-x(j))/(x(i)-x(j));
            termino=strcat(termino,'*(x-',num2str(x(j)),...
                ')/(',num2str(x(i)),'-',num2str(x(j)),')');
            
        end
        
    end
    
    yi=yi+producto;
    yi
    pol=strcat(pol,'+',termino);
    
end
pol=sym(pol);
pol=simplify(pol);
p=inline(char(pol));

set(handles.yi,'string',yi);
set(handles.polinomio,'string',char(vpa(pol,4)));
global v2;
v2=pol;
disp(vpa(pol,4));



% --- Executes on button press in L_Borrar.
function L_Borrar_Callback(hObject, eventdata, handles)
% hObject    handle to L_Borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.py,'string','');
set(handles.xi,'string','');
set(handles.yi,'string','');
set(handles.px,'string','');
set(handles.funcion,'string','');
set(handles.polinomio,'string','');
cla('reset');

set(handles.px, 'enable', 'inactive')
set(handles.py, 'enable', 'inactive')
set(handles.funcion, 'enable', 'inactive')

set(handles.sol,'BackgroundColor',[0.8 0.8 1]);
set(handles.puntosxy,'BackgroundColor',[0.8 0.8 1]);
set(handles.fun,'BackgroundColor',[0.8 0.8 1]);
set(handles.polinter,'BackgroundColor',[0.8 0.8 1]);
set(handles.px,'BackgroundColor',[0.8 0.8 1]);
set(handles.py,'BackgroundColor',[0.8 0.8 1]);
set(handles.funcion,'BackgroundColor',[0.8 0.8 1]);

% --- Executes on button press in L_Regresar.
function L_Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to L_Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


function yi_Callback(hObject, eventdata, handles)
% hObject    handle to yi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yi as text
%        str2double(get(hObject,'String')) returns contents of yi as a double


% --- Executes during object creation, after setting all properties.
function yi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xi_Callback(hObject, eventdata, handles)
% hObject    handle to xi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xi as text
%        str2double(get(hObject,'String')) returns contents of xi as a double


% --- Executes during object creation, after setting all properties.
function xi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function px_Callback(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of px as text
%        str2double(get(hObject,'String')) returns contents of px as a double


% --- Executes during object creation, after setting all properties.
function px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','White');
end



function py_Callback(hObject, eventdata, handles)
% hObject    handle to py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of py as text
%        str2double(get(hObject,'String')) returns contents of py as a double


% --- Executes during object creation, after setting all properties.
function py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function polinomio_Callback(hObject, eventdata, handles)
% hObject    handle to polinomio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of polinomio as text
%        str2double(get(hObject,'String')) returns contents of polinomio as a double


% --- Executes during object creation, after setting all properties.
function polinomio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to polinomio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in L_Graficar.
function L_Graficar_Callback(hObject, eventdata, handles)
% hObject    handle to L_Graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.grafica);
cla('reset');
global v2;
axes(handles.grafica);
x=str2num(get(handles.px,'string'));
y=str2num(get(handles.py,'string'));
xx=str2double(get(handles.xi,'String'));

n=length(x);

tt=linspace(x(1),x(n));

plot(tt,subs(v2,tt),'--b');
hold on ;
zoom on;
plot (xx,subs(v2,xx),'r*');
hold on ;
zoom on;
plot(x,y,'*',tt,subs(v2,xx));

set(handles.L_Graficar1, 'enable', 'off')
set(handles.sol,'BackgroundColor',[1 0 0]);
set(handles.puntosxy,'BackgroundColor',[0 0.45 0.74]);



% --- Executes on button press in L_vectores.
function L_vectores_Callback(hObject, eventdata, handles)
% hObject    handle to L_vectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.px, 'enable', 'on')
set(handles.py, 'enable', 'on')
set(handles.xi, 'enable', 'on')
set(handles.funcion, 'enable', 'inactive')
set(handles.funcion,'BackgroundColor',[0.8 0.8 1]);
set(handles.L_Calcular, 'enable', 'on')
set(handles.L_Borrar, 'enable', 'on')
set(handles.L_Graficar, 'enable', 'on')
set(handles.L_Graficar1, 'enable', 'off')
set(handles.L_Calcular1, 'enable', 'off')
set(handles.py,'BackgroundColor',[1 1 1]);
set(handles.px,'BackgroundColor',[1 1 1]);
set(handles.sol,'BackgroundColor',[0.8 0.8 1]);
set(handles.puntosxy,'BackgroundColor',[0.8 0.8 1]);
set(handles.py,'string','');
set(handles.xi,'string','');
set(handles.yi,'string','');
set(handles.px,'string','');
set(handles.funcion,'string','');
set(handles.polinomio,'string','');
cla('reset');


% --- Executes on button press in L_ingfuncion.
function L_ingfuncion_Callback(hObject, eventdata, handles)
% hObject    handle to L_ingfuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.px, 'enable', 'on')
set(handles.funcion, 'enable', 'on')
set(handles.xi, 'enable', 'on')
set(handles.L_Calcular1, 'enable', 'on')
set(handles.L_Calcular, 'enable', 'off')
set(handles.L_Borrar, 'enable', 'on')
set(handles.L_Graficar1, 'enable', 'on')
set(handles.L_Graficar, 'enable', 'off')
set(handles.py,'Enable','inactive');
set(handles.py,'BackgroundColor',[0.8 0.8 1]);
set(handles.px,'BackgroundColor',[1 1 1]);
set(handles.funcion,'BackgroundColor',[1 1 1]);
set(handles.xi,'BackgroundColor',[1 1 1]);
set(handles.polinter,'BackgroundColor',[0.8 0.8 1]);
set(handles.fun,'BackgroundColor',[0.8 0.8 1]);
set(handles.sol,'BackgroundColor',[0.8 0.8 1]);
set(handles.py,'string','');
set(handles.xi,'string','');
set(handles.yi,'string','');
set(handles.px,'string','');
set(handles.funcion,'string','');
set(handles.polinomio,'string','');
cla('reset');

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


% --- Executes on button press in L_Calcular1.
function L_Calcular1_Callback(hObject, eventdata, handles)
% hObject    handle to L_Calcular1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
   
    syms x
    x=str2num(get(handles.px,'string'));
    f=get(handles.funcion,'string');
    f=inline(f);
    xx=str2num(get(handles.xi,'string'));
    
    for i=1:length(x)
        y(i)=f(x(i));
        
    end
    
    n=length(x);
    if length(x)~=n,error('x e y deben ser la misma longitud');end;
    yi=0;pol='0';
    
    for i=1:n
        producto=y(i);
        termino=num2str(y(i));
        for j=1:n
            if i~=j
                producto=producto*(xx-x(j))/(x(i)-x(j));
                termino=strcat(termino,'*(x-',num2str(x(j)),...
                    ')/(',num2str(x(i)),'-',num2str(x(j)),')');
                
            end
        end
        yi=yi+producto;
        pol=strcat(pol,'+',termino);
        
    end
    pol=sym(pol);
    pol=simplify(pol);
       
    p=inline(char(pol));
    
    set(handles.yi,'string',yi);
    set(handles.polinomio,'string',char(vpa(pol,4)));
    global v2;
    v2=pol;
    disp(vpa(pol,4));
    
catch
    
    msgbox('Error')
    
end



% --- Executes on button press in L_Graficar1.
function L_Graficar1_Callback(hObject, eventdata, handles)
% hObject    handle to L_Graficar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.grafica);
cla('reset');
global v2;
axes(handles.grafica);

fx=get(handles.funcion,'String');
x=str2double(get(handles.xi,'String'));
plot (x,subs(v2,x),'or');%aproximacion
hold on ;
zoom on;
ezplot (v2);
hL2 = ezplot(v2);
set(hL2,'Color','g'); %polinomio interpolante

hold on;
zoom on

ezplot(fx);
hL = ezplot(fx);
set(hL,'Color','k');%funcion

set(handles.L_Graficar, 'enable', 'off')
set(handles.sol,'BackgroundColor',[1 0 0]);
set(handles.fun,'BackgroundColor',[0 0 0]);
set(handles.polinter,'BackgroundColor',[0 1 0]);


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);
