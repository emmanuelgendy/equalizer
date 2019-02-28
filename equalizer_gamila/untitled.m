function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 28-Feb-2019 09:05:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Declaring some flags
handles.FILE_OPENED = false;
handles.PLOTTED= false;

% Universal Counter
handles.progress = 0;
handles.counter=1;

% Empty handler
handles.filename=0;

% Setting some GUI Tweaks
set(handles.playButton,'Enable','off');
set(handles.pauseButton,'Enable','off');
set(handles.resumeButton,'Enable','off');
set(handles.stopButton,'Enable','off');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_10_Callback(hObject, eventdata, handles)
% hObject    handle to slider_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Min',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in browseButton.
function browseButton_Callback(hObject, eventdata, handles)
% hObject    handle to browseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


   if handles.FILE_OPENED
    % Stopping player if a previous song is on
    stop(handles.player);
    handles.filename=0;
    handles.FILE_OPENED= false;
   end
    
   % Opening Dialog box to choose the file from
[handles.filename,handles.filepath]= uigetfile('*.wav;*.mp3;*.ogg;*.flac;*.au;*.aiff;*.aif;*.aifc;*.m4a;*.mp4');

% Checking if a file is selected
if handles.filename
 
    % Updating my flags
    handles.FILE_OPENED = true;
    handles.PLOTTED = false;
    % Changing my GUI accordingly
    set(handles.playButton,'Enable','on');
    set(handles.pauseButton,'Enable','off');
    set(handles.resumeButton,'Enable','off');
    set(handles.stopButton,'Enable','off');
    
    % audioread function reads the audio file and passes its signal to
    % handles.signal and its sampling frequency into handles.sampling frequency
    [handles.signal,handles.sampling_frequency] = audioread(handles.filename);
    
    % Getting step time
    handles.stepTime = 1/handles.sampling_frequency;
    
    % Getting Total time
    handles.totalTime = handles.stepTime*(size(handles.signal,1)-1);
    
    % Setting the file name as text into the edit text bar
    set(handles.browseEdit,'String',handles.filename);

    % Initiating an instance from AudioPlayer class
    handles.player = audioplayer( handles.signal, handles.sampling_frequency);
    
    % getting signal parameters
    handles.min=min(handles.signal);
    handles.max=max(handles.signal);
    handles.size=size(handles.signal,1);
    
    % Array of steps
    handles.steps = transpose(0:handles.stepTime:handles.totalTime);
    
    % Zeros on_screen matrix
    handles.on_screen=zeros(handles.size,1);
    
   
    
    
else msgbox('Please open an audio file', 'Error', 'Error');
end

% Updating GUI Data
guidata(hObject,handles);



% --- Executes on slider movement.
function slider_1_Callback(hObject, eventdata, handles)
% hObject    handle to slider_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider




% --- Executes during object creation, after setting all properties.
function slider_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over slider_1.
function slider_1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to slider_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider_2_Callback(hObject, eventdata, handles)
% hObject    handle to slider_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_3_Callback(hObject, eventdata, handles)
% hObject    handle to slider_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_4_Callback(hObject, eventdata, handles)
% hObject    handle to slider_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_5_Callback(hObject, eventdata, handles)
% hObject    handle to slider_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_6_Callback(hObject, eventdata, handles)
% hObject    handle to slider_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_7_Callback(hObject, eventdata, handles)
% hObject    handle to slider_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_8_Callback(hObject, eventdata, handles)
% hObject    handle to slider_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_9_Callback(hObject, eventdata, handles)
% hObject    handle to slider_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

 % Sliders Setting
    set(hObject,'Min',-150);
    set(hObject,'Max',150);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



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

% Plots the audio signal
function plot_original_base(hObject,handles)

% Setting axis
axes(handles.originalAxis);
% Plotting
plot(handles.steps(:,1),handles.signal(:,1),'Color',[104/255 189/255 208/255]);
% Setting up the axis
set(handles.originalAxis,'XColor',[104/255 189/255 208/255]);
set(handles.originalAxis,'YColor',[104/255 189/255 208/255]);
xlabel('Seconds');
ylabel('Normalized Frequency');
% Updating the Flag
handles.PLOTTED = true;
% Update GUI
guidata(hObject,handles);

% Plays the Vline synced with the progress
function plot_original(hObject,handles)

% Setting axis
axes(handles.originalAxis);

while isplaying(handles.player)
    % Setting up the axis
    set(handles.originalAxis,'YLim',[-1 1]);
    handles.on_screen(1:handles.progress,1)=handles.signal(1:handles.progress,1);
    % Plot the audio signal
    plot(handles.steps,handles.on_screen);
    set(handles.originalAxis,'XLim',[0 handles.totalTime]);
    drawnow limitrate;
    
    handles.progress= handles.progress + handles.sampling_frequency/2;
    pause(0.5);
   
end
% Update GUI
guidata(hObject,handles);


% --- Executes on button press in playButton.
function playButton_Callback(hObject, eventdata, handles)
% hObject    handle to playButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% GUI Tweaks
set(handles.pauseButton,'Enable','on');
set(handles.stopButton,'Enable','on');
set(handles.playButton,'Enable','off');
set(handles.browseButton,'Enable','off');

% Reseting Progress
handles.progress=0;

% Play the audiofile
play(handles.player);

if ~handles.PLOTTED
    plot_original_base(hObject,handles);
end


% Update GUI data
guidata(hObject,handles);





% --- Executes on button press in pauseButton.
function pauseButton_Callback(hObject, eventdata, handles)
% hObject    handle to pauseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% GUI Tweaks
set(handles.resumeButton,'Enable','on');
set(handles.pauseButton,'Enable','off');
set(handles.browseButton,'Enable','on');

% Pause
pause(handles.player);
% Updating GUI
guidata(hObject,handles);

% --- Executes on button press in resumeButton.
function resumeButton_Callback(hObject, eventdata, handles)
% hObject    handle to resumeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% GUI Tweaks
set(handles.resumeButton,'Enable','off');
set(handles.pauseButton,'Enable','on');

% Resume
resume(handles.player);


guidata(hObject,handles);


% --- Executes on button press in stopButton.
function stopButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% GUI Tweaks
set(handles.stopButton,'Enable','off');
set(handles.playButton,'Enable','on');
set(handles.resumeButton,'Enable','off');
set(handles.pauseButton,'Enable','off');
set(handles.browseButton,'Enable','on');

% Stop and reset the audio file
stop(handles.player);





% --- Executes during object creation, after setting all properties.
function image_CreateFcn(hObject, eventdata, handles)
% hObject    handle to image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject);
imshow('Design1.png');
% Hint: place code in OpeningFcn to populate image



function range1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range1_edit as text
%        str2double(get(hObject,'String')) returns contents of range1_edit as a double


% --- Executes during object creation, after setting all properties.
function range1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range2_edit as text
%        str2double(get(hObject,'String')) returns contents of range2_edit as a double


% --- Executes during object creation, after setting all properties.
function range2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range3_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range3_edit as text
%        str2double(get(hObject,'String')) returns contents of range3_edit as a double


% --- Executes during object creation, after setting all properties.
function range3_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range4_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range4_edit as text
%        str2double(get(hObject,'String')) returns contents of range4_edit as a double


% --- Executes during object creation, after setting all properties.
function range4_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range5_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range5_edit as text
%        str2double(get(hObject,'String')) returns contents of range5_edit as a double


% --- Executes during object creation, after setting all properties.
function range5_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range6_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range6_edit as text
%        str2double(get(hObject,'String')) returns contents of range6_edit as a double


% --- Executes during object creation, after setting all properties.
function range6_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range7_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range7_edit as text
%        str2double(get(hObject,'String')) returns contents of range7_edit as a double


% --- Executes during object creation, after setting all properties.
function range7_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range7_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range9_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range9_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range9_edit as text
%        str2double(get(hObject,'String')) returns contents of range9_edit as a double


% --- Executes during object creation, after setting all properties.
function range9_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range9_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range8_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range8_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range8_edit as text
%        str2double(get(hObject,'String')) returns contents of range8_edit as a double


% --- Executes during object creation, after setting all properties.
function range8_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range8_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function range10_edit_Callback(hObject, eventdata, handles)
% hObject    handle to range10_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of range10_edit as text
%        str2double(get(hObject,'String')) returns contents of range10_edit as a double


% --- Executes during object creation, after setting all properties.
function range10_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to range10_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
