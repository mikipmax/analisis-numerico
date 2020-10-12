function varargout = gui_dif(varargin)
% GUI_DIF MATLAB code for gui_dif.fig
%      GUI_DIF, by itself, creates a new GUI_DIF or raises the existing
%      singleton*.
%
%      H = GUI_DIF returns the handle to a new GUI_DIF or the handle to
%      the existing singleton*.
%
%      GUI_DIF('CALLBACK',hObject-,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DIF.M with the given input arguments.
%
%      GUI_DIF('Property','Value',...) creates a new GUI_DIF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_dif_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_dif_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_dif

% Last Modified by GUIDE v2.5 16-Dec-2018 03:54:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @gui_dif_OpeningFcn, ...
    'gui_OutputFcn',  @gui_dif_OutputFcn, ...
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


% --- Executes just before gui_dif is made visible.
function gui_dif_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_dif (see VARARGIN)

% Choose default command line output for gui_dif
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_dif wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.tab1,'Data',repmat({[]},3,2))
set(handles.rb1,'value',1)
% --- Outputs from this function are returned to the command line.
function varargout = gui_dif_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb1.
function rb1_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1

set(handles.rb1,'value',1)
set(handles.rb2,'value',0)
set(handles.tab1,'Data',repmat({[]},3,2))


% --- Executes on button press in rb2.
function rb2_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2
set(handles.rb1,'value',0)
set(handles.rb2,'value',1)

set(handles.tab1,'Data',repmat({[]},5,2))

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb1.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to rb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb1


% --- Executes on button press in rb2.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to rb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb2


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
try
axes(handles.axes1);
cla('reset');
    % hObject    handle to pushbutton3 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    if get(handles.rb1, 'value')==1
        syms x
        M1=[];
        M2=[];
        M3=[];
        resultado=0
        
        Ma=get(handles.tab1,'Data')
        f=get(handles.edit6,'string')
       
        x0=str2num(get(handles.edit7,'string'))
        g=inline(f)
        
        dg=diff(f,x)
      
        vf=feval(inline(dg),x0)
        M1=[str2num(char(Ma(1,1)))
            str2num(char(Ma(2,1)))
            str2num(char(Ma(3,1)))]
        
        M2=[feval(g,str2num(char(Ma(1,1))))
            feval(g,str2num(char(Ma(2,1))))
            feval(g,str2num(char(Ma(3,1))))]
        
        M3=[cellstr(num2str(M1)) cellstr(num2str(M2))] %Convertir a la matriz de celdas de vectores de caracteres
        set(handles.tab1,'Data',M3);
        
        
        indice=0
        for j=1:3
            
            if str2num(char(Ma(j,1)))==x0
                indice=j
                break;
            end
            
        end
        
        
        if indice==1
            resultado=(1/(2*abs(abs(M1(1,1))-abs(M1(2,1)))))*(-3*M2(1,1)+4*M2(2,1)-M2(3,1));
            
        end
        
        if indice==2
            
            resultado=(1/(2*abs(abs(M1(1,1))-abs(M1(2,1)))))*(-M2(1,1)+M2(3,1));
        end
        
        if indice==3
            resultado=(1/(2*abs(abs(M1(1,1))-abs(M1(2,1)))))*(3*M2(3,1)-4*M2(2,1)+M2(1,1))
        end
        
        set(handles.resdif,'string',resultado);
        set(handles.ea1,'string',abs(vf-resultado));
        set(handles.er1,'string',abs(vf-resultado)/abs(vf));
          axes(handles.axes1);
        hold off
         ezplot(f)
         hold on
         grid on
         ezplot(dg)
          zoom on
        plot (x0,subs(dg,x0),'or');
        plot (x0,resultado,'*');
    else
        syms x
        M1=[];
        M2=[];
        M3=[];
        resultado=0
        
        Ma=get(handles.tab1,'Data')
        f=get(handles.edit6,'string')
        x0=str2num(get(handles.edit7,'string'))
        g=inline(f)
        dg=diff(f,x)
        vf=feval(inline(dg),x0)
        
        
        M1=[str2num(char(Ma(1,1)))
            str2num(char(Ma(2,1)))
            str2num(char(Ma(3,1)))
            str2num(char(Ma(4,1)))
            str2num(char(Ma(5,1)))]
        
        M2=[feval(g,str2num(char(Ma(1,1))))
            feval(g,str2num(char(Ma(2,1))))
            feval(g,str2num(char(Ma(3,1))))
            feval(g,str2num(char(Ma(4,1))))
            feval(g,str2num(char(Ma(5,1))))]
        
        M3=[cellstr(num2str(M1)) cellstr(num2str(M2))] %Convertir a la matriz de celdas de vectores de caracteres
        set(handles.tab1,'Data',M3);
        
        
        indice=0
        for j=1:5
            
            if str2num(char(Ma(j,1)))==x0
                indice=j
                break;
            end
            
        end
        
        if indice==1
            resultado=(1/(12*abs(abs(M1(1,1))-abs(M1(2,1)))))*(-25*M2(1,1)+48*M2(2,1)-36*M2(3,1)+16*M2(4,1)-3*M2(5,1));
        end
        if indice==3
            
            resultado=(1/(12*abs(abs(M1(1,1))-abs(M1(2,1)))))*(M2(1,1)-8*M2(2,1)+8*M2(4,1)-M2(5,1));
        end
        if indice==2|| indice==4 || indice==5
            msgbox('Ingrese bien los datos');
        end
        
        
        
        set(handles.resdif,'string',resultado);
        set(handles.ea1,'string',abs(vf-resultado));
        set(handles.er1,'string',abs(vf-resultado)/abs(vf));
         axes(handles.axes1);
        hold off
         ezplot(f)
         hold on
         grid on
         ezplot(dg)
          zoom on
        plot (x0,subs(dg,x0),'or');
        plot (x0,resultado,'*');
    end
    
    
catch
    msgbox('Ingrese bien los datos');
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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.resdif,'string','');
set(handles.ea1,'string','');
set(handles.er1,'string','');
set(handles.tab1, 'Data', cell(size(get(handles.tab1,'Data'))));
axes(handles.axes1);
cla('reset');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
