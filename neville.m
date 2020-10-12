function varargout = neville(varargin)
% NEVILLE MATLAB code for neville.fig
%      NEVILLE, by itself, creates a new NEVILLE or raises the existing
%      singleton*.
%
%      H = NEVILLE returns the handle to a new NEVILLE or the handle to
%      the existing singleton*.
%
%      NEVILLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEVILLE.M with the given input arguments.
%
%      NEVILLE('Property','Value',...) creates a new NEVILLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before neville_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to neville_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help neville

% Last Modified by GUIDE v2.5 18-Dec-2018 01:41:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @neville_OpeningFcn, ...
    'gui_OutputFcn',  @neville_OutputFcn, ...
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


% --- Executes just before neville is made visible.
function neville_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to neville (see VARARGIN)

% Choose default command line output for neville
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes neville wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.rb1,'value',1)
set(handles.fun, 'enable', 'on')
set(handles.ys, 'enable', 'inactive')
% --- Outputs from this function are returned to the command line.
function varargout = neville_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ys,'string','');
set(handles.x,'string','');
set(handles.xs,'string','');
set(handles.xr,'string','');
set(handles.fun,'string','');
set(handles.tabla,'string','');
axes(handles.grafica);
cla('reset');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


function fun_Callback(hObject, eventdata, handles)
% hObject    handle to fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fun as text
%        str2double(get(hObject,'String')) returns contents of fun as a double


% --- Executes during object creation, after setting all properties.
function fun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
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

axes(handles.grafica);
cla('reset');

if get(handles.rb1, 'value')==0
    
    syms x
    xs=str2num(get(handles.xs,'string'));
    
    x=str2num(get(handles.x,'string'));
    texto=[];
    
    fs=str2num(get(handles.ys,'string'));
    
    M=[];
    n = length(xs); q = zeros(1,n);
    for kj=0:n-1
        
      M=[M;strcat('Qi',cellstr(num2str(kj)))]
       
    end
    M
    texto1=sprintf('i       xi        ');
    
    texto=sprintf('%s %s',texto,texto1);
    b = strjoin (cellstr(char(M)),'             ' );
   
    texto=sprintf('%s %s',texto,b)
    texto1=sprintf('\n');
    texto=sprintf('%s %s',texto,texto1);
    for i = 1 : n
        qb = q(1);
        q(1) = fs(i);
        
        
        
        texto1=sprintf('%d    %5.2f     %7.7f  ',i-1,xs(i),fs(i))
        
        texto=sprintf('%s %s',texto,texto1); % agrego una fila al texto
        for j = 1 : i-1
            qa = qb;
            qb = q(j+1);
            q(j+1) = ( (x-xs(i-j))*q(j) - (x-xs(i) )*qa )/( xs(i)-xs(i-j) );
            
            texto1= sprintf('%9.7f ',q(j+1));
            texto=sprintf('%s %s',texto,texto1);
        end
        texto1=sprintf('\n');
        texto=sprintf('%s %s',texto,texto1);
    end
    p = q(n);
    fprintf('%9.7f  ',p);
    
    set(handles.tabla,'string',texto);
    set(handles.xr,'string',sprintf('%6.7f',p));
    
    axes(handles.grafica);
    xs=str2num(get(handles.xs,'string'));
    ys=str2num(get(handles.ys,'string'));
    px=str2num(get(handles.x,'string'))
    pxr=str2num(get(handles.xr,'string'))
    plot(xs,ys,'or');
    hold on
    grid on
    plot(px,pxr,'*')
else
    
    syms x
    xs=str2num(get(handles.xs,'string'));
    f=get(handles.fun,'string');
    f=inline(f);
    x=str2num(get(handles.x,'string'));
    texto=[];
    
    for i=1:length(xs)
        fs(i)=f(xs(i));
    end
    
    n = length(xs); q = zeros(1,n);
    M=[];
    n = length(xs); q = zeros(1,n);
    for kj=0:n-1
        
      M=[M;strcat('Qi',cellstr(num2str(kj)))]
       
    end
    M
    texto1=sprintf('i       xi        ');
    
    texto=sprintf('%s %s',texto,texto1);
    b = strjoin (M,'             ' );
   % texto1=sprintf(M)
    texto=sprintf('%s %s',texto,b)
    texto1=sprintf('\n');
    texto=sprintf('%s %s',texto,texto1);
    for i = 1 : n
        qb = q(1);
        q(1) = fs(i);
        texto1=sprintf('%d    %5.2f     %9.7f  ',i-1,xs(i),fs(i))
        texto=sprintf('%s %s',texto,texto1); % agrego una fila al texto
        for j = 1 : i-1
            qa = qb;
            qb = q(j+1);
            q(j+1) = ( (x-xs(i-j))*q(j) - (x-xs(i) )*qa )/( xs(i)-xs(i-j) );
            texto1= sprintf('%9.7f ',q(j+1));
            texto=sprintf('%s %s',texto,texto1);
        end
        texto1=sprintf('\n');
        texto=sprintf('%s %s',texto,texto1);
    end
    p = q(n);
    fprintf('%9.7f  ',p);
    
    set(handles.tabla,'string',texto);
    set(handles.xr,'string',sprintf('%6.7f',p));
    
    global v2;
    axes(handles.grafica);
    
    fx=get(handles.fun,'String');
    x=str2double(get(handles.x,'String'));
    
    ezplot(fx);
    hL = ezplot(fx);
    set(hL,'Color','b');
    hold on;
    zoom on;
    
    plot (x,subs(fx,x),'or');
     px=str2num(get(handles.x,'string'))
    pxr=str2num(get(handles.xr,'string'))
    hold on 
    grid on
    plot(px,pxr,'*')
end


% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1
set(handles.rb1,'value',1)
set(handles.rb2,'value',0)
set(handles.fun, 'enable', 'on')
set(handles.ys, 'enable', 'inactive')
set(handles.ys,'string','')

% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2

set(handles.rb1,'value',0)
set(handles.rb2,'value',1)
set(handles.fun,'string','')
set(handles.fun, 'enable', 'inactive')
set(handles.ys, 'enable', 'on')

function xs_Callback(hObject, eventdata, handles)
% hObject    handle to xs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xs as text
%        str2double(get(hObject,'String')) returns contents of xs as a double


% --- Executes during object creation, after setting all properties.
function xs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ys_Callback(hObject, eventdata, handles)
% hObject    handle to ys (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ys as text
%        str2double(get(hObject,'String')) returns contents of ys as a double


% --- Executes during object creation, after setting all properties.
function ys_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ys (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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
