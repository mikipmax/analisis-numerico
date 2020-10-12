function varargout = Biseccion(varargin)
format long
% BISECCION MATLAB code for Biseccion.fig
%      BISECCION, by itself, creates a new BISECCION or raises the existing
%      singleton*.
%
%      H = BISECCION returns the handle to a new BISECCION or the handle to
%      the existing singleton*.
%
%      BISECCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BISECCION.M with the given input arguments.
%
%      BISECCION('Property','Value',...) creates a new BISECCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Biseccion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Biseccion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Biseccion

% Last Modified by GUIDE v2.5 15-Dec-2018 18:11:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Biseccion_OpeningFcn, ...
                   'gui_OutputFcn',  @Biseccion_OutputFcn, ...
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


% --- Executes just before Biseccion is made visible.
function Biseccion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Biseccion (see VARARGIN)
scrsz=get(0,'ScreenSize');
pos_act=get(gcf,'Position');
xr=scrsz(3)-pos_act(3);
xp=round(xr/2);
yr=scrsz(4)-pos_act(4);
yp=round(yr/2);
set(gcf,'Position',[xp yp pos_act(3) pos_act(4)]);
% Choose default command line output for Biseccion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Biseccion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Biseccion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menu_Callback(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

  try
f=get(handles.funcion,'string');

Mb=get(handles.tab,'data');
a=str2double(get(handles.x0,'string'));

b=str2double(get(handles.x1,'string'));

TOL=str2double(get(handles.tol,'string'));

if isempty(f)|| isempty(a) || isempty(b) || isempty(TOL)
    warndlg('Rellene los datos faltantes','Aviso');
else

format long
% DATOS DE ENTRADA
%   -f es una función continua en el intervalo [a,b], ingresa como cadena
%   de caracteres
%   -a y b son el extremo izquierdo y el extremo derecho
%   -TOL es la tolerancia
% DATOS DE SALIDA
%   -c es la aproximacion a la raiz
%   -fc es la funcion f evaluada en c.

f=inline(f);   % inline convierte la cadena en una funcion matematica


fa=f(a);
fb=f(b);
A=[];
B=[];
P=[];
Mb=[];
i=1;
if (fa*fb>0)
  fprintf('Las imagenes f(%.2f) y f(%.2f) tienen que tener signo distinto\n',fa,fb);
  msgbox('Las imagenes tienen que tener signo distinto\n');
  
    fprintf('No se puede aplicar el metodo de biseccion en [%.2f,%.2f]\n',a,b);
  i=-1;
else
  max1=1+round((log(b-a)-log(TOL))/log(2));
  fprintf('n  \t   an \t\t   pn \t\t   bn\t\t   f(pn) \n');
  for k=1:max1
    p=a+(b-a)/2;
    P(k)=p;
    A(k)=a;
    B(k)=b;
    fp=f(p);
    F(k)=fp;
    ea=0;
    er=0;
   
    if k==1
     newRow ={sprintf('%.7f',A(k)),sprintf('%.7f',P(k)),sprintf('%.7f',B(k)),sprintf('%.7f',F(k)),'',''};
      set(handles.tab,'Data',newRow)
    end
     if k>1
        
         ea=abs(P(k)-P(k-1));
         er=ea/abs(P(k));
        newRow ={sprintf('%.7f',A(k)),sprintf('%.7f',P(k)),sprintf('%.7f',B(k)),sprintf('%.7f',F(k)),num2str(sprintf('%.7f',ea)),num2str(sprintf('%.7f',er))};
    oldData = get(handles.tab,'Data');
    newData=[oldData; newRow];
    set(handles.tab,'Data',newData)
    end
    fprintf('%d \t%.7f\t%.7f\t%.7f\t%.7f\n',k,A(k),P(k),B(k),F(k));
    
             
         %Mb=[Mb;A(k) P(k) B(k) F(k) ea er];
       
    if(fp==0 || (b-a)/2<TOL)
      fprintf('Procedimiento terminado exitosamente, despues de %d iteraciones\n',k);
     
      
      c=P(k);
      fc=f(c);
      break
    elseif(fa*fp>0)
      a=p;
      fa=fp;
    else
      b=p;
    end
   end
end
  

%set(handles.tab,'Data',Mb);
 %B=get(handles.tab,'Data');
%B(1,5)="";
%B(1,6)="";

 
%set(handles.tab,'Data',B);
set(handles.raiz,'string',sprintf('%.7f',c)); 


end
  catch
%msgbox('Ingrese correctamente los datos ');    
  end
    
    

% --- Executes on button press in Graficar.
function Graficar_Callback(hObject, eventdata, handles)
% hObject    handle to Graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
f=get(handles.funcion,'string');
a=str2double(get(handles.a1,'string'));
b=str2double(get(handles.b1,'string'));
x=0;

if isempty(a) || isempty(b) || isempty(f)
    msgbox('Rellene los datos para poder graficar');
else
      
if a~=b
    axes(handles.axes1);
cla('reset');
  axes(handles.axes1);
 x=str2double(get(handles.raiz,'String'));
      
        hold off
        ezplot (f,[a,b]);
        hold on
        grid on
        zoom on
        xlabel('x')
ylabel('y')
        plot (x,subs(f,x),'or');
else
    axes(handles.axes1);
cla('reset');
    ezplot(f),grid on;
end
end
catch
    msgbox('Rellene correctamente los datos. No se ha podido graficar');
end


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



function x0_Callback(hObject, eventdata, handles)
% hObject    handle to x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x0 as text
%        str2double(get(hObject,'String')) returns contents of x0 as a double


% --- Executes during object creation, after setting all properties.
function x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
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


% --------------------------------------------------------------------
function Borrar_Callback(hObject, eventdata, handles)
% hObject    handle to Borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.funcion,'string','');
set(handles.x0,'string','');
set(handles.x1,'string','');
set(handles.tol,'string','');
set(handles.raiz,'string','');
set(handles.a1,'string','');
set(handles.b1,'string','');


% --------------------------------------------------------------------
function Salir_Callback(hObject, eventdata, handles)
% hObject    handle to Salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function acercade_Callback(hObject, eventdata, handles)
% hObject    handle to acercade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

acercade
% --------------------------------------------------------------------
function Instrucciones_Callback(hObject, eventdata, handles)
% hObject    handle to Instrucciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
instrucciones


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1 as text
%        str2double(get(hObject,'String')) returns contents of a1 as a double


% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to iteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iteraciones as text
%        str2double(get(hObject,'String')) returns contents of iteraciones as a double


% --- Executes during object creation, after setting all properties.
function iteraciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.funcion,'String','');
set(handles.x0,'String','');
set(handles.x1,'String','');
set(handles.tol,'String','');
set(handles.raiz,'String','');
set(handles.a1,'String','');
set(handles.b1,'String','');
set(handles.tab, 'Data', cell(size(get(handles.tab,'Data'))));
axes(handles.axes1);
cla('reset');
