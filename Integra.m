function varargout = Integra(varargin)
% INTEGRA MATLAB code for Integra.fig
%      INTEGRA, by itself, creates a new INTEGRA or raises the existing
%      singleton*.
%
%      H = INTEGRA returns the handle to a new INTEGRA or the handle to
%      the existing singleton*.
%
%      INTEGRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRA.M with the given input arguments.
%
%      INTEGRA('Property','Value',...) creates a new INTEGRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Integra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Integra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Integra

% Last Modified by GUIDE v2.5 25-Dec-2018 19:09:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Integra_OpeningFcn, ...
                   'gui_OutputFcn',  @Integra_OutputFcn, ...
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


% --- Executes just before Integra is made visible.
function Integra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Integra (see VARARGIN)

% Choose default command line output for Integra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Integra wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.rb1,'value',1)

% --- Outputs from this function are returned to the command line.
function varargout = Integra_OutputFcn(hObject, eventdata, handles) 
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
set(handles.fun,'string','')
set(handles.a,'string','')
set(handles.b,'string','')
set(handles.n,'string','')
set(handles.res,'string','')
set(handles.tab, 'Data', cell(size(get(handles.tab,'Data'))));
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



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
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
if get(handles.rb1, 'value')==1
    f=get(handles.fun,'string')
a=str2num(get(handles.a,'string'))
b=str2num(get(handles.b,'string'))
n1=str2num(get(handles.n,'string'))
fa=feval(inline(f),a)
fb=feval(inline(f),b)

n1
vec1=[]
h=(b-a)/(n1)
respu=a
vec=[]
ress=0
res=0
M=[];
 
for i=1:n1+1
    
    respu=respu+h
    if i==1 
    respu=respu-h
    end
    vec(i)=respu
    M=[M; vec(i) feval(inline(f),vec(i))]
    if i<=n1
   
res=res+feval(inline(f),vec(i))+feval(inline(f),vec(i)+h)

    end
end

ress=(b-a)*res/(2*n1)
set(handles.res,'string',ress)
set (handles.tab,'Data',M)
else if get(handles.rb2, 'value')==1
        f=get(handles.fun,'string')
a=str2num(get(handles.a,'string'))
b=str2num(get(handles.b,'string'))
n1=str2num(get(handles.n,'string'))
fa=feval(inline(f),a)
fb=feval(inline(f),b)


n1
vec1=[]
h=(b-a)/(n1)
respu=a
vec=[]
ress=0
res=0
M=[];
 
for i=1:n1+1
    
    respu=respu+h
    if i==1 
    respu=respu-h
    end
    vec(i)=respu
    disp('ha')
 
    M=[M; vec(i) feval(inline(f),vec(i))]
    if i<=n1
  
res=res+feval(inline(f),vec(i))+(4*feval(inline(f),(vec(i)+vec(i)+h)/2))+feval(inline(f),vec(i)+h)

    end
end

ress=(b-a)*res/(6*n1)
set(handles.res,'string',ress)
set (handles.tab,'Data',M)
    else 
       f=get(handles.fun,'string')
a=str2num(get(handles.a,'string'))
b=str2num(get(handles.b,'string'))
n1=str2num(get(handles.n,'string'))
fa=feval(inline(f),a)
fb=feval(inline(f),b)

n1
vec1=[]
h=(b-a)/(n1)
respu=a
vec=[]
ress=0
res=0
M=[];
 
for i=1:n1+1
    
    respu=respu+h
    if i==1 
    respu=respu-h
    end
    vec(i)=respu
    disp('ha')
 
    M=[M; vec(i) feval(inline(f),vec(i))]
    if i<=n1
  
res=res+feval(inline(f),vec(i))+(3*feval(inline(f),(2*vec(i)+vec(i)+h)/3))+(3*feval(inline(f),(vec(i)+2*(vec(i)+h))/3))+feval(inline(f),vec(i)+h)

    end
end

ress=(b-a)*res/(8*n1)
set(handles.res,'string',ress)
set (handles.tab,'Data',M)
    end
end





axes(handles.grafica);
x1=a:0.1:b; 
x1
syms x 

y1=subs(f,x,x1);

x2=x1; 
y2=y1*0; 

x3=ones(1,length(x1))*x1(end); 
y3=y1; 

x=[x2 x3 x1(end:-1:1) ]; 
y=[y2 y3 y1(end:-1:1) ]; 
fill(x,y,'r') 
% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1
set(handles.rb1,'value',1)
set(handles.rb2,'value',0)
set(handles.rb3,'value',0)

% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2

set(handles.rb1,'value',0)
set(handles.rb3,'value',0)
set(handles.rb2,'value',1)

function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to kl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kl as text
%        str2double(get(hObject,'String')) returns contents of kl as a double


% --- Executes during object creation, after setting all properties.



% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb3.
function rb3_Callback(hObject, eventdata, handles)
% hObject    handle to rb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb3
set(handles.rb1,'value',0)
set(handles.rb2,'value',0)
set(handles.rb3,'value',1)
