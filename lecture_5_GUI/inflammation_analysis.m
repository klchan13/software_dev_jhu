function varargout = inflammation_analysis(varargin)
% INFLAMMATION_ANALYSIS MATLAB code for inflammation_analysis.fig
%      INFLAMMATION_ANALYSIS, by itself, creates a new INFLAMMATION_ANALYSIS or raises the existing
%      singleton*.
%
%      H = INFLAMMATION_ANALYSIS returns the handle to a new INFLAMMATION_ANALYSIS or the handle to
%      the existing singleton*.
%
%      INFLAMMATION_ANALYSIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INFLAMMATION_ANALYSIS.M with the given input arguments.
%
%      INFLAMMATION_ANALYSIS('Property','Value',...) creates a new INFLAMMATION_ANALYSIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inflammation_analysis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inflammation_analysis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inflammation_analysis

% Last Modified by GUIDE v2.5 22-Jan-2017 19:57:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inflammation_analysis_OpeningFcn, ...
                   'gui_OutputFcn',  @inflammation_analysis_OutputFcn, ...
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


% --- Executes just before inflammation_analysis is made visible.
function inflammation_analysis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inflammation_analysis (see VARARGIN)

% Choose default command line output for inflammation_analysis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% List all the csv files in this location then set the listbox1 handle to be the
% name of these files.
files = dir('/Users/kimberly/github/software_dev_jhu/matlab_data/inflammation/*.csv');
set(handles.listbox1,'string',{files.name});

% UIWAIT makes inflammation_analysis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inflammation_analysis_OutputFcn(hObject, eventdata, handles) 
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

% Find the file currently selected.
files = get(handles.listbox1,'String');
file_idx = get(handles.listbox1,'Value');
patient_data = csvread(['/Users/kimberly/github/software_dev_jhu/matlab_data/inflammation/', files{file_idx}]);

% Set the axes to to be the large plot on the left.
axes(handles.axes1);
imagesc(patient_data)

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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% When this radiobutton is selected, set all the other radiobuttons to be
% off
set(handles.radiobutton2, 'Value', 0)
set(handles.radiobutton3, 'Value', 0)
files = get(handles.listbox1,'String');
file_idx = get(handles.listbox1,'Value');

% set the axes to be the one on the bottom right hand corner
axes(handles.axes2);

% Plot the value indicated by the first radio button for the file given.
plot_data(1, file_idx, files)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1, 'Value', 0)
set(handles.radiobutton3, 'Value', 0)
files = get(handles.listbox1,'String');
file_idx = get(handles.listbox1,'Value');
axes(handles.axes2);
plot_data(2, file_idx, files)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton1, 'Value', 0)
set(handles.radiobutton2, 'Value', 0)
files = get(handles.listbox1,'String');
file_idx = get(handles.listbox1,'Value');
axes(handles.axes2);
plot_data(3, file_idx, files)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Plot the data on the bottom right hand axes.
function [] = plot_data(value, file_idx, files)
patient_data = csvread(['/Users/kimberly/github/software_dev_jhu/matlab_data/inflammation/', files{file_idx}]);

% Find the mean, max, and min for this data.
analyzed_data = [mean(patient_data, 1);...
                max(patient_data, [], 1);...
                min(patient_data, [], 1)];
value_labels = {'average', 'maximum', 'minimum'};
plot(analyzed_data(value, :))
xlabel('timepoint')
ylabel(value_labels{value})

function [inflammation] = get_inflammation_values(x_val, y_val, file_idx, files)
patient_data = csvread(['/Users/kimberly/github/software_dev_jhu/matlab_data/inflammation/', files{file_idx}]);
inflammation = patient_data(y_val,x_val);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
dcm_obj = datacursormode;

% Get the value of the cursor
c_info = getCursorInfo(dcm_obj);
x_val = c_info.Position(1);
y_val = c_info.Position(2);

% Get the file names from the listbox
files = get(handles.listbox1,'String');
file_idx = get(handles.listbox1,'Value');

% Get the inflammation values of the current cursor point.
[inflammation] = get_inflammation_values(x_val, y_val, file_idx, files);

% Set all the edit text boxes.
set(handles.edit1, 'String', num2str(y_val))
set(handles.edit2, 'String', num2str(x_val))
set(handles.edit3, 'String', num2str(inflammation))
