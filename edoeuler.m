function varargout = edoeuler(varargin)
% EDOEULER MATLAB code for edoeuler.fig
%      EDOEULER, by itself, creates a new EDOEULER or raises the existing
%      singleton*.
%
%      H = EDOEULER returns the handle to a new EDOEULER or the handle to
%      the existing singleton*.
%
%      EDOEULER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDOEULER.M with the given input arguments.
%
%      EDOEULER('Property','Value',...) creates a new EDOEULER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before edoeuler_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to edoeuler_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help edoeuler

% Last Modified by GUIDE v2.5 05-Jan-2019 05:40:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @edoeuler_OpeningFcn, ...
    'gui_OutputFcn',  @edoeuler_OutputFcn, ...
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


% --- Executes just before edoeuler is made visible.
function edoeuler_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to edoeuler (see VARARGIN)

% Choose default command line output for edoeuler
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes edoeuler wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = edoeuler_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=get(handles.fun,'string')
a=str2num(get(handles.a,'string'))
b=str2num(get(handles.b,'string'))
x0=str2num(get(handles.x0,'string'))
y0=str2num(get(handles.y0,'string'))
dddd=inline(f)
dddd
syms y(x)
eqn = diff(y,x) ==dddd(x,y);
eqn
cond = y(x0) == y0;
ySol(x) = dsolve(eqn,cond)
syms x y yiv yii


n=str2num(get(handles.n,'string'))

h=(b-a)/n


% para que k comience desde 0 y no desde 1
f
i=0

[nom]=ind2sub (2, i:n)


set(handles.tab,'RowName',strread(num2str(nom)));
set(handles.tab1,'RowName',strread(num2str(nom)));
xx=[]
respu=a
k1=0
k2=0

for i=1:n+1
    
    respu=respu+h
    if i==1
        respu=respu-h
        yi1(i)=y0
        yii(i)=y0
        yii1(i)=y0
        yr2(i)=y0
        
        newRow1={sprintf('%.7f',x0),sprintf('%.7f',y0)}
        set(handles.tab1,'Data',newRow1)
        newRow ={sprintf('%.7f',y0),'0','0',sprintf('%.7f',y0),'0','0',sprintf('%.7f',y0),'0','0',sprintf('%.7f',y0),'0','0'};
        set(handles.tab,'Data',newRow)
        
    end
    xx(i)=respu
    if i>1
        yi1(i)=yi1(i-1)+h*(subs(f,{x,y},{xx(i-1),yi1(i-1)}))
        yii(i)=yii(i-1)+h*(subs(f,{x,y},{xx(i),x}))-x

       yii1(i)=yii1(i-1)+h*subs(f,{x,y},{(xx(i-1)+h/2),yii1(i-1)+h/2*subs(f,{x,y},{xx(i-1),yii1(i-1)})})

        qc = arrayfun(@char, yii(i), 'uniform', 0);
        
        qc
        %--------------------------------------------------------
        
        char(qc)
        fzero(char(qc),0)
        
        yii(i)=fzero(char(qc),0)
        
       k1(i)=subs(f,{x,y},{xx(i-1),yr2(i-1)})
        k2(i)=subs(f,{x,y},{xx(i-1)+h,yr2(i-1)+h*k1(i)})
        yr2(i)=yr2(i-1)+h*(k1(i)+k2(i))/2
        
        newRow1={sprintf('%.7f',xx(i)),sprintf('%.7f',subs(ySol(x),x,xx(i)))}
        oldData1 = get(handles.tab1,'Data');
        newData1=[oldData1; newRow1];
        set(handles.tab1,'Data',newData1)
        
        newRow ={sprintf('%.7f',yi1(i)),...
            sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yi1(i))),...
            sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yi1(i))/abs(subs(ySol(x),x,xx(i)))),sprintf('%.7f',yii(i)),...
            sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yii(i))), sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yii(i))/abs(subs(ySol(x),x,xx(i)))),sprintf('%.7f',yii1(i)),...
            sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yii1(i))),sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yii1(i))/abs(subs(ySol(x),x,xx(i)))),...
            sprintf('%.7f',yr2(i)),...
            sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yr2(i))),sprintf('%.7f',abs(subs(ySol(x),x,xx(i))-yr2(i))/abs(subs(ySol(x),x,xx(i))))};
        
        oldData = get(handles.tab,'Data');
        newData=[oldData; newRow];
        set(handles.tab,'Data',newData)
       
        
    end
    
    
    %----------------------------------------------------------
    
    
end
 
     
axes(handles.grafico);
cla('reset');
plot(xx,yi1,'-*r')
hold on
grid on
zoom on
plot(xx,yii,'-*b')
hold on
plot(xx,subs(ySol(x),x,xx),'-*black')
hold on
plot(xx,yii1,'-*green')
hold on
plot(xx,yr2,'-*yellow')








% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes during object creation, after setting all properties.
function pushbutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.fun,'string','')
set(handles.a,'string','')
set(handles.b,'string','')
set(handles.n,'string','')

set(handles.x0,'string','')
set(handles.y0,'string','')
set(handles.tab, 'Data', cell(size(get(handles.tab,'Data'))));
set(handles.tab1, 'Data', cell(size(get(handles.tab1,'Data'))));
axes(handles.grafico);
cla('reset');


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



function y0_Callback(hObject, eventdata, handles)
% hObject    handle to y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y0 as text
%        str2double(get(hObject,'String')) returns contents of y0 as a double


% --- Executes during object creation, after setting all properties.
function y0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
