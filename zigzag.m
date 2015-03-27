function varargout = zigzag(varargin)
% ZIGZAG MATLAB code for zigzag.fig
%      ZIGZAG, by itself, creates a new ZIGZAG or raises the existing
%      singleton*.
%
%      H = ZIGZAG returns the handle to a new ZIGZAG or the handle to
%      the existing singleton*.
%
%      ZIGZAG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZIGZAG.M with the given input arguments.
%
%      ZIGZAG('Property','Value',...) creates a new ZIGZAG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before zigzag_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to zigzag_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help zigzag

% Last Modified by GUIDE v2.5 12-Feb-2015 06:10:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zigzag_OpeningFcn, ...
                   'gui_OutputFcn',  @zigzag_OutputFcn, ...
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


% --- Executes just before zigzag is made visible.
function zigzag_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zigzag (see VARARGIN)

% Choose default command line output for zigzag

% Creating the table of DCT coefficients
handles.output = hObject;
T = [0 0 0 0 0 0 0 0; 
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;
0 0 0 0 0 0 0 0;];
A = mat2gray(T);


% adding the values on to the axes image
axes(handles.axes1)
imshow(A);
text(0.75,1, '12', 'color', 'm'); text(1.75,1, '19', 'color', 'm'); text(2.75,1, '22', 'color', 'm'); text(3.75,1, '15', 'color', 'm'); text(4.75,1, '8', 'color', 'm'); text(5.75,1, '5', 'color', 'm'); text(6.75,1, '5', 'color', 'm'); text(7.75,1, '4', 'color','m');
text(0.75,2, '9', 'color', 'm'); text(1.75,2, '1', 'color', 'm'); text(2.75,2, '2', 'color', 'm'); text(3.75,2, '8', 'color', 'm'); text(4.75,2, '4', 'color', 'm'); text(5.75,2, '0', 'color', 'm'); text(6.75,2, '1', 'color', 'm'); text(7.75,2, '0', 'color','m');
text(0.75,3, '6', 'color', 'm'); text(1.75,3, '3', 'color', 'm'); text(2.75,3, '1', 'color', 'm'); text(3.75,3, '4', 'color', 'm'); text(4.75,3, '3', 'color', 'm'); text(5.75,3, '1', 'color', 'm'); text(6.75,3, '1', 'color', 'm'); text(7.75,3, '1', 'color','m');
text(0.75,4, '4', 'color', 'm'); text(1.75,4, '3', 'color', 'm'); text(2.75,4, '1', 'color', 'm'); text(3.75,4, '3', 'color', 'm'); text(4.75,4, '3', 'color', 'm'); text(5.75,4, '0', 'color', 'm'); text(6.75,4, '0', 'color', 'm'); text(7.75,4, '1', 'color','m');
text(0.75,5, '2', 'color', 'm'); text(1.75,5, '2', 'color', 'm'); text(2.75,5, '1', 'color', 'm'); text(3.75,5, '2', 'color', 'm'); text(4.75,5, '2', 'color', 'm'); text(5.75,5, '0', 'color', 'm'); text(6.75,5, '0', 'color', 'm'); text(7.75,5, '0', 'color','m');
text(0.75,6, '3', 'color', 'm'); text(1.75,6, '2', 'color', 'm'); text(2.75,6, '2', 'color', 'm'); text(3.75,6, '2', 'color', 'm'); text(4.75,6, '2', 'color', 'm'); text(5.75,6, '1', 'color', 'm'); text(6.75,6, '1', 'color', 'm'); text(7.75,6, '0', 'color','m');
text(0.75,7, '5', 'color', 'm'); text(1.75,7, '3', 'color', 'm'); text(2.75,7, '1', 'color', 'm'); text(3.75,7, '1', 'color', 'm'); text(4.75,7, '1', 'color', 'm'); text(5.75,7, '0', 'color', 'm'); text(6.75,7, '0', 'color', 'm'); text(7.75,7, '29', 'color','m');
text(0.75,8, '4', 'color', 'm'); text(1.75,8, '4', 'color', 'm'); text(2.75,8, '1', 'color', 'm'); text(3.75,8, '0', 'color', 'm'); text(4.75,8, '1', 'color', 'm'); text(5.75,8, '1', 'color', 'm'); text(6.75,8, '0', 'color', 'm'); text(7.75,8, '29', 'color','m');
A = size(T,1);
B = size(T,2);
hold on 
for k = 0.5:1:A
x = [1 B];
y = [k k];
plot(x,y,'Color','w','LineStyle','-');
plot(x,y,'Color','k','LineStyle',':'); 
end
for k = 0.5:1:B
x = [k k];
y = [1 A];
plot(x,y,'Color','w','LineStyle','-');
plot(x,y,'Color','k','LineStyle',':');
end
hold off 

% adding the zigzag sequence image to the axes
axes(handles.axes3)
imshow('zigzag.gif')

% creating the row of vectors

B = [
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ; 
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;]
    
  
M = mat2gray(B);
% adding the values to the axes 
axes(handles.axes4)
imshow(M);
text(1,2.5, '12, ', 'color', 'm');
text(2,2.5, '19, ', 'color', 'm');
text(3,2.5, '20, ', 'color', 'm');
text(4,2.5, '3, ', 'color', 'm');
text(5,2.5, '19, ', 'color', 'm');
text(6,2.5, '22, ', 'color', 'm');
text(7,2.5, '15, ', 'color', 'm');
text(8,2.5, '15, ', 'color', 'm');
text(9,2.5, '9,', 'color', 'm');
text(10,2.5, '5,', 'color', 'm');
text(11,2.5, '6,', 'color', 'm');
text(12,2.5, '1,', 'color', 'm');
text(13,2.5, '2,', 'color', 'm');
text(14,2.5, '10, ', 'color', 'm');
text(15,2.5, '8,', 'color', 'm');
text(16,2.5, '5,', 'color', 'm');
text(17,2.5, '7,', 'color', 'm');
text(18,2.5, '8,', 'color', 'm');
text(19,2.5, '2,', 'color', 'm');
text(20,2.5, '3,', 'color', 'm');
text(21,2.5, '4,', 'color', 'm');
text(22,2.5, '2,', 'color', 'm');
text(23,2.5, '3,', 'color', 'm');
text(24,2.5, '1,', 'color', 'm');
text(25,2.5, '8,', 'color', 'm');
text(26,2.5, '5,', 'color', 'm');
text(27,2.5, '3,', 'color', 'm');
text(28,2.5, '5,', 'color', 'm');
text(29,2.5, '4,', 'color', 'm');
text(30,2.5, '3,', 'color', 'm');
text(31,2.5, '0,', 'color', 'm');
text(32,2.5, '4,', 'color', 'm');
text(33,2.5, '4,', 'color', 'm');
text(34,2.5, '1,', 'color', 'm');
text(35,2.5, '2,', 'color', 'm');
text(36,2.5, '3,', 'color', 'm');
text(37,2.5, '2,', 'color', 'm');
text(38,2.5, '1,', 'color', 'm');
text(39,2.5, '1,', 'color', 'm');
text(40,2.5, '3,', 'color', 'm');
text(41,2.5, '3,', 'color', 'm');
text(42,2.5, '0,', 'color', 'm');
text(43,2.5, '1,', 'color', 'm');
text(44,2.5, '4,', 'color', 'm');
text(45,2.5, '1,', 'color', 'm');
text(46,2.5, '1,', 'color', 'm');
text(47,2.5, '1,', 'color', 'm');
text(48,2.5, '3,', 'color', 'm');
text(49,2.5, '2,', 'color', 'm');
text(50,2.5, '2,', 'color', 'm');
text(51,2.5, '2,', 'color', 'm');
text(52,2.5, '2,', 'color', 'm');
text(53,2.5, '0,', 'color', 'm');
text(54,2.5, '1,', 'color', 'm');
text(55,2.5, '0,', 'color', 'm');
text(56,2.5, '1,', 'color', 'm');
text(57,2.5, '1,', 'color', 'm');
text(58,2.5, '0,', 'color', 'm');
text(59,2.5, '1,', 'color', 'm');
text(60,2.5, '1,', 'color', 'm');
text(61,2.5, '0,', 'color', 'm');
text(62,2.5, '0,', 'color', 'm');
text(63,2.5, '0,', 'color', 'm');
text(64,2.5, '0', 'color', 'm');

     
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zigzag wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = zigzag_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jFrame = get(handle(gcf),'JavaFrame')
jFrame.setMaximized(true);
% Get default command line output from handles structure
varargout{1} = handles.output;

% Button to go back to the main menu
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
menu;

% button to close the current figure
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)


% Button to open the quantisation page
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
quantize;

% button to open the dequantisation page
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
dequantize;


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
