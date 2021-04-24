function varargout = Soal2_123190062(varargin)
% SOAL2_123190062 MATLAB code for Soal2_123190062.fig
%      SOAL2_123190062, by itself, creates a new SOAL2_123190062 or raises the existing
%      singleton*.
%
%      H = SOAL2_123190062 returns the handle to a new SOAL2_123190062 or the handle to
%      the existing singleton*.
%
%      SOAL2_123190062('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL2_123190062.M with the given input arguments.
%
%      SOAL2_123190062('Property','Value',...) creates a new SOAL2_123190062 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soal2_123190062_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soal2_123190062_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soal2_123190062

% Last Modified by GUIDE v2.5 24-Apr-2021 11:13:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soal2_123190062_OpeningFcn, ...
                   'gui_OutputFcn',  @Soal2_123190062_OutputFcn, ...
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


% --- Executes just before Soal2_123190062 is made visible.
function Soal2_123190062_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soal2_123190062 (see VARARGIN)

% Choose default command line output for Soal2_123190062
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soal2_123190062 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Soal2_123190062_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mfault_Callback(hObject, eventdata, handles)
% hObject    handle to mfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mfault as text
%        str2double(get(hObject,'String')) returns contents of mfault as a double


% --- Executes during object creation, after setting all properties.
function mfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mfault (see GCBO)
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
input1 = get(handles.style,'string');
input2 = get(handles.mfault,'string');
gaya = str2double(input1);
salah = str2double(input2);

if gaya > 75 && salah > 100
    set(handles.range1,'string','*input out of range');
    set(handles.range2,'string','*input out of range');
    set(handles.result,'string','Result');
elseif gaya > 75
    set(handles.range1,'string','*input out of range');
    set(handles.result,'string','Result');
else
    if salah > 100
        set(handles.range2,'string','*input out of range');
        set(handles.result,'string','Result');
    else
        input = [gaya salah];
        fis = readfis('Soal2_123190062');
        hasil = evalfis(input, fis);

        if hasil <= 50 && hasil <= 60
            output = 'Rendah';
        elseif hasil >= 50 && hasil <= 70
            output = 'Sedang';
        elseif hasil >= 70
            output = 'Tinggi';
        end
        
        set(handles.range1,'string','');
        set(handles.range2,'string','');
        set(handles.result,'string',(output));
    end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.style,'string','');
set(handles.mfault,'string','');
set(handles.range1,'string','');
set(handles.range2,'string','');
set(handles.result,'string','Result');


function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
