function varargout = baltimore_weather(varargin)
% BALTIMORE_WEATHER MATLAB code for baltimore_weather.fig
%      BALTIMORE_WEATHER, by itself, creates a new BALTIMORE_WEATHER or raises the existing
%      singleton*.
%
%      H = BALTIMORE_WEATHER returns the handle to a new BALTIMORE_WEATHER or the handle to
%      the existing singleton*.
%
%      BALTIMORE_WEATHER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BALTIMORE_WEATHER.M with the given input arguments.
%
%      BALTIMORE_WEATHER('Property','Value',...) creates a new BALTIMORE_WEATHER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before baltimore_weather_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to baltimore_weather_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help baltimore_weather

% Last Modified by GUIDE v2.5 22-Jan-2017 15:34:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @baltimore_weather_OpeningFcn, ...
                   'gui_OutputFcn',  @baltimore_weather_OutputFcn, ...
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


% --- Executes just before baltimore_weather is made visible.
function baltimore_weather_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to baltimore_weather (see VARARGIN)

% Choose default command line output for baltimore_weather
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes baltimore_weather wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = baltimore_weather_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load('/Users/kimberly/matlab_data/baltimore_weather/baltimore_weather.mat')

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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

function [] = plot_data(curves, normalize)
% Plots the data curves indicated by the radio buttons
% inputs: curves - an array of 0s and 1s indicating which radio buttons are
% selected and thus which fields to plot.
load('/Users/kimberly/matlab_data/baltimore_weather/baltimore_weather.mat') % Replace with your own path to your baltimore_weather.mat file
all_fields = {'average low temperature (F)', ...
    'average high temperature (F)', ...
    'average precipitation (inches)', ...
    'days with precipitation', ...
    'hours of sun'};

data = [avg_low_f; avg_high_f; avg_precip_in; days_w_precip; hrs_sun]; % Put all the data in one array

if normalize == 1           % Make the maximum of each curve equal to 1, if the normalize checkbox is selected
    data = data./repmat(max(data,[],2),[1 12]);     % Divides each row of the data by the max value in that row.
end

for c_idx = find(curves)
    plot(1:length(month_labels), data(c_idx, :), '-*');   % Plot only the curves indicated by the radio buttons
    hold on
end
legend(all_fields{find(curves)}, 'Location', 'SouthEast') % Put a legend in the bottom right hand corner
hold off                                    % Reset the hold to get ready for the next plot command.

function [data_vals, month] = get_pt_values(x_val)
% Gets the values 
% inputs: curves - an array indicating which curves to plot
load('/Users/kimberly/matlab_data/baltimore_weather/baltimore_weather.mat') % Replace with your own path to your baltimore_weather.mat file

data = [avg_low_f; avg_high_f; avg_precip_in; days_w_precip; hrs_sun]; % Put all the data in one array
data_vals = data(:,x_val);
month = month_labels{x_val};


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Updates the edit fields next to each field with the field value from the
% month indicated by the data cursor on the figure plot.

% Set the current axis to the left plot
axes(handles.axes1)
dcm_obj = datacursormode;

% Get the value of the cursor
c_info = getCursorInfo(dcm_obj);
x_val = c_info.Position(1);

% Get all baltimore weather fields of the current month selected
% and set the edit fields to this value
[data_vals, month] = get_pt_values(x_val);
set(handles.edit1, 'String', num2str(data_vals(1)))
set(handles.edit2, 'String', num2str(data_vals(2)))
set(handles.edit3, 'String', num2str(data_vals(3)))
set(handles.edit4, 'String', num2str(data_vals(4)))
set(handles.edit5, 'String', num2str(data_vals(5)))

% Display the month indicated by the cursor
set(handles.edit6, 'String', month)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Which fields do you want to plot? The radio buttons take a value of 1
% if they are selected and 0 if they're not selected.  Make an array out of
% the radio button values as an input to plot_data function.
curves = [get(handles.radiobutton1,'Value'),...
            get(handles.radiobutton2,'Value'),...
            get(handles.radiobutton3,'Value'),...
            get(handles.radiobutton4,'Value'),...
            get(handles.radiobutton5,'Value')];

% The checkbox takes a value of 1 if selected.
normalize = get(handles.checkbox1,'Value');

% Set the current axes to the big plot on the left.
axes(handles.axes1);
plot_data(curves, normalize)
