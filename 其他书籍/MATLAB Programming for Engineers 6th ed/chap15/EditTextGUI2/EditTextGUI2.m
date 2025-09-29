function varargout = EditTextGUI2(varargin)
% EDITTEXTGUI2 MATLAB code for EditTextGUI2.fig
%      EDITTEXTGUI2, by itself, creates a new EDITTEXTGUI2 or raises the existing
%      singleton*.
%
%      H = EDITTEXTGUI2 returns the handle to a new EDITTEXTGUI2 or the handle to
%      the existing singleton*.
%
%      EDITTEXTGUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDITTEXTGUI2.M with the given input arguments.
%
%      EDITTEXTGUI2('Property','Value',...) creates a new EDITTEXTGUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EditTextGUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EditTextGUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EditTextGUI2

% Last Modified by GUIDE v2.5 28-Sep-2014 10:30:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EditTextGUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @EditTextGUI2_OutputFcn, ...
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


% --- Executes just before EditTextGUI2 is made visible.
function EditTextGUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EditTextGUI2 (see VARARGIN)

% Choose default command line output for EditTextGUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EditTextGUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EditTextGUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function EditBox2_Callback(hObject, eventdata, handles)
% hObject    handle to EditBox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Find the value typed into the edit box
str = get (handles.EditBox2,'String');

% Place the value into the text field
set (handles.TextBox2,'String',str);


% --- Executes during object creation, after setting all properties.
function EditBox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditBox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
