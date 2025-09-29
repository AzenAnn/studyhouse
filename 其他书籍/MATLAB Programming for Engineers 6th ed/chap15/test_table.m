function varargout = test_table(varargin)
% TEST_TABLE MATLAB code for test_table.fig
%      TEST_TABLE, by itself, creates a new TEST_TABLE or raises the existing
%      singleton*.
%
%      H = TEST_TABLE returns the handle to a new TEST_TABLE or the handle to
%      the existing singleton*.
%
%      TEST_TABLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_TABLE.M with the given input arguments.
%
%      TEST_TABLE('Property','Value',...) creates a new TEST_TABLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_table_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_table_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_table

% Last Modified by GUIDE v2.5 28-Sep-2014 13:19:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_table_OpeningFcn, ...
                   'gui_OutputFcn',  @test_table_OutputFcn, ...
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


% --- Executes just before test_table is made visible.
function test_table_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_table (see VARARGIN)

% Choose default command line output for test_table
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_table wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_table_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

% Get the cells selected
rows = eventdata.Indices(:,1);
columns = eventdata.Indices(:,2);

% List the (row,column) pairs selected
string = ['Selected Cells: '];
for ii = 1:length(rows)
   string = [string '(', int2str(rows(ii)) ',' int2str(columns(ii)) ') '];
end

% Set the list into the string
set (handles.TextBox1, 'String', string);

% Clear the modified cell 
set (handles.TextBox2, 'String', 'Modified Cell:');

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

% Get the cells selected
rows = eventdata.Indices(:,1);
columns = eventdata.Indices(:,2);

% Display the dat change
string = ['Modified Cell: (', int2str(rows) ',' int2str(columns) ')'];
string = [string '; Old data = ' num2str(eventdata.PreviousData)];
string = [string '; New data = ' num2str(eventdata.NewData)];

% Set the list into the string
set (handles.TextBox2, 'String', string);
