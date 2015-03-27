function varargout = dequantize(varargin)
% DEQUANTIZE MATLAB code for dequantize.fig
%      DEQUANTIZE, by itself, creates a new DEQUANTIZE or raises the existing
%      singleton*.
%
%      H = DEQUANTIZE returns the handle to a new DEQUANTIZE or the handle to
%      the existing singleton*.
%
%      DEQUANTIZE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEQUANTIZE.M with the given input arguments.
%
%      DEQUANTIZE('Property','Value',...) creates a new DEQUANTIZE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dequantize_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dequantize_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dequantize

% Last Modified by GUIDE v2.5 26-Jan-2015 09:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dequantize_OpeningFcn, ...
                   'gui_OutputFcn',  @dequantize_OutputFcn, ...
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


% --- Executes just before dequantize is made visible.
function dequantize_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dequantize (see VARARGIN)

% Choose default command line output for dequantize
handles.output = hObject;
d = [185 205 215 235 190 210 250 235;
         240 230 215 190 185 190 170 225;
         35 60 25 200 210 20 35 40; 
         124 15 50 235 220 40 50 20; 
         100 55 50 230 215 65 60 40; 
         95 100 50 210 215 50 55 50; 
         100 115 50 210 200 45 40 40; 
         185 205 215 235 190 55 85 25; ];
    A = abs(round(dct2(d)))
     
     q = [16 11 10 16 24 40 51 61;
12 12 14 19 26 58 60 55;
14 13 16 24 40 57 69 56;
14 17 22 29 51 87 80 62;
18 22 37 56 68 109 103 77;
24 35 55 64 81 194 113 92;
49 64 78 87 103 121 120 101;
72 92 95 98 121 100 103 99;];
x = round(A./q);

D = [0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;];
T = mat2gray(D)


axes(handles.axes1)
imshow(T);
text(0.75,1, '66', 'color', 'm'); text(0.75,2, '11', 'color', 'm'); text(0.75,3, '-25', 'color', 'm'); text(0.75,4, '0', 'color', 'm'); text(0.75,5, '10', 'color', 'm'); text(0.75,6, '1', 'color', 'm'); text(0.75,7, '-3', 'color', 'm'); text(0.75,8, '0', 'color', 'm');
text(1.75,1, '16', 'color', 'm'); text(1.75,2, '-10', 'color', 'm'); text(1.75,3, '7', 'color', 'm'); text(1.75,4, '-1', 'color', 'm'); text(1.75,5, '-2', 'color', 'm'); text(1.75,6, '0', 'color', 'm'); text(1.75,7, '1', 'color', 'm'); text(1.75,8, '0', 'color', 'm');
text(2.75,1, '21', 'color', 'm'); text(2.75,2, '3', 'color', 'm'); text(2.75,3, '8', 'color', 'm'); text(2.75,4, '-3', 'color', 'm'); text(2.75,5, '-4', 'color', 'm'); text(2.75,6, '0', 'color', 'm'); text(2.75,7, '1', 'color', 'm'); text(2.75,8, '0', 'color', 'm'); 
text(3.75,1, '6', 'color', 'm'); text(3.75,2, '-4', 'color', 'm'); text(3.75,3, '2', 'color', 'm'); text(3.75,4, '0', 'color', 'm'); text(3.75,5, '0', 'color', 'm'); text(3.75,6, '0', 'color', 'm'); text(3.75,7, '0', 'color', 'm'); text(3.75,8, '0', 'color', 'm');
text(4.75,1, '4', 'color', 'm'); text(4.75,2, '1', 'color', 'm'); text(4.75,3, '0', 'color', 'm'); text(4.75,4, '0', 'color', 'm'); text(4.75,5, '0', 'color', 'm'); text(4.75,6, '1', 'color', 'm'); text(4.75,7, '0', 'color', 'm'); text(4.75,8, '0', 'color', 'm');
text(5.75,1, '-5', 'color', 'm'); text(5.75,2, '-1', 'color', 'm'); text(5.75,3, '-1', 'color', 'm'); text(5.75,4, '0', 'color', 'm'); text(5.75,5, '1', 'color', 'm'); text(5.75,6, '0', 'color', 'm'); text(5.75,7, '0', 'color', 'm'); text(5.75,8, '0', 'color', 'm');
text(6.75,1, '-1', 'color', 'm'); text(6.75,2, '0', 'color', 'm'); text(6.75,3, '-1', 'color', 'm'); text(6.75,4, '0', 'color', 'm'); text(6.75,5, '0', 'color', 'm'); text(6.75,6, '0', 'color', 'm'); text(6.75,7, '0', 'color', 'm'); text(6.75,8, '0', 'color', 'm');
text(7.75,1, '-1', 'color', 'm'); text(7.75,2, '0', 'color', 'm'); text(7.75,3, '0', 'color', 'm'); text(7.75,4, '0', 'color', 'm'); text(7.75,5, '0', 'color', 'm'); text(7.75,6, '0', 'color', 'm'); text(7.75,7, '0', 'color', 'm'); text(7.75,8, '0', 'color', 'm');
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

axes(handles.axes2)
imshow(T)
text(0.75,1, '16', 'color', 'm'); text(0.75,2, '11', 'color', 'm'); text(0.75,3, '10', 'color', 'm'); text(0.75,4, '16', 'color', 'm'); text(0.75,5, '24', 'color', 'm'); text(0.75,6, '40', 'color', 'm'); text(0.75,7, '51', 'color', 'm'); text(0.75,8, '61', 'color', 'm');
text(1.75,1, '12', 'color', 'm'); text(1.75,2, '12', 'color', 'm'); text(1.75,3, '14', 'color', 'm'); text(1.75,4, '19', 'color', 'm'); text(1.75,5, '26', 'color', 'm'); text(1.75,6, '58', 'color', 'm'); text(1.75,7, '60', 'color', 'm'); text(1.75,8, '55', 'color', 'm');
text(2.75,1, '14', 'color', 'm'); text(2.75,2, '13', 'color', 'm'); text(2.75,3, '16', 'color', 'm'); text(2.75,4, '24', 'color', 'm'); text(2.75,5, '40', 'color', 'm'); text(2.75,6, '57', 'color', 'm'); text(2.75,7, '69', 'color', 'm'); text(2.75,8, '56', 'color', 'm'); 
text(3.75,1, '14', 'color', 'm'); text(3.75,2, '17', 'color', 'm'); text(3.75,3, '22', 'color', 'm'); text(3.75,4, '29', 'color', 'm'); text(3.75,5, '51', 'color', 'm'); text(3.75,6, '87', 'color', 'm'); text(3.75,7, '80', 'color', 'm'); text(3.75,8, '62', 'color', 'm');
text(4.75,1, '18', 'color', 'm'); text(4.75,2, '22', 'color', 'm'); text(4.75,3, '37', 'color', 'm'); text(4.75,4, '56', 'color', 'm'); text(4.75,5, '68', 'color', 'm'); text(4.75,6, '109', 'color', 'm'); text(4.75,7, '103', 'color', 'm'); text(4.75,8, '77', 'color', 'm');
text(5.75,1, '24', 'color', 'm'); text(5.75,2, '35', 'color', 'm'); text(5.75,3, '55', 'color', 'm'); text(5.75,4, '64', 'color', 'm'); text(5.75,5, '81', 'color', 'm'); text(5.75,6, '194', 'color', 'm'); text(5.75,7, '113', 'color', 'm'); text(5.75,8, '92', 'color', 'm');
text(6.75,1, '49', 'color', 'm'); text(6.75,2, '64', 'color', 'm'); text(6.75,3, '78', 'color', 'm'); text(6.75,4, '87', 'color', 'm'); text(6.75,5, '103', 'color', 'm'); text(6.75,6, '121', 'color', 'm'); text(6.75,7, '120', 'color', 'm'); text(6.75,8, '101', 'color', 'm');
text(7.75,1, '72', 'color', 'm'); text(7.75,2, '92', 'color', 'm'); text(7.75,3, '95', 'color', 'm'); text(7.75,4, '98', 'color', 'm'); text(7.75,5, '121', 'color', 'm'); text(7.75,6, '100', 'color', 'm'); text(7.75,7, '103', 'color', 'm'); text(7.75,8, '99', 'color', 'm');
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


x = [   66    11    25     0    10     1     3     0;
    16    10     7     1     2     0     1     0;
    21     3     8     3     4     0     1     0;
     6     4     2     0     0     0     0     0;
     4     1     0     0     0     1     0     0;
     5     1     1     0     1     0     0     0;
     1     0     1     0     0     0     0     0;
     1     0     0     0     0     0     0     0; ];
 
B = x.*q;
 
B = [ 1056 121 250  0    240    40  153   0;
      192  120 98   19   52      0   60   0;
      294   39 128  72   160     0   69   0;
       84   68 44   0      0     0    0   0;
       72   22 0    0      0   109    0   0;
      120   35 5    0     81     0    0   0;
       49   0  78   0      0     0    0   0;
       72   0  0    0      0     0    0   0;];
   
axes(handles.axes3)
imshow(T)
text(0.5,1, '1056', 'color', 'm'); text(0.75,2, '121', 'color', 'm'); text(0.75,3, '-250', 'color', 'm'); text(0.75,4, '0', 'color', 'm'); text(0.75,5, '240', 'color', 'm'); text(0.75,6, '40', 'color', 'm'); text(0.75,7, '-153', 'color', 'm'); text(0.75,8, '0', 'color', 'm');
text(1.75,1, '192', 'color', 'm'); text(1.75,2, '-120', 'color', 'm'); text(1.75,3, '98', 'color', 'm'); text(1.75,4, '-19', 'color', 'm'); text(1.75,5, '-52', 'color', 'm'); text(1.75,6, '0', 'color', 'm'); text(1.75,7, '60', 'color', 'm'); text(1.75,8, '0', 'color', 'm');
text(2.75,1, '294', 'color', 'm'); text(2.75,2, '39', 'color', 'm'); text(2.75,3, '128', 'color', 'm'); text(2.75,4, '-72', 'color', 'm'); text(2.75,5, '-160', 'color', 'm'); text(2.75,6, '0', 'color', 'm'); text(2.75,7, '69', 'color', 'm'); text(2.75,8, '0', 'color', 'm'); 
text(3.75,1, '84', 'color', 'm'); text(3.75,2, '-68', 'color', 'm'); text(3.75,3, '44', 'color', 'm'); text(3.75,4, '0', 'color', 'm'); text(3.75,5, '0', 'color', 'm'); text(3.75,6, '0', 'color', 'm'); text(3.75,7, '0', 'color', 'm'); text(3.75,8, '0', 'color', 'm');
text(4.75,1, '72', 'color', 'm'); text(4.75,2, '22', 'color', 'm'); text(4.75,3, '0', 'color', 'm'); text(4.75,4, '0', 'color', 'm'); text(4.75,5, '0', 'color', 'm'); text(4.75,6, '109', 'color', 'm'); text(4.75,7, '0', 'color', 'm'); text(4.75,8, '0', 'color', 'm');
text(5.75,1, '-120', 'color', 'm'); text(5.75,2, '-35', 'color', 'm'); text(5.75,3, '-55', 'color', 'm'); text(5.75,4, '0', 'color', 'm'); text(5.75,5, '81', 'color', 'm'); text(5.75,6, '0', 'color', 'm'); text(5.75,7, '0', 'color', 'm'); text(5.75,8, '0', 'color', 'm');
text(6.75,1, '-49', 'color', 'm'); text(6.75,2, '0', 'color', 'm'); text(6.75,3, '-78', 'color', 'm'); text(6.75,4, '0', 'color', 'm'); text(6.75,5, '0', 'color', 'm'); text(6.75,6, '0', 'color', 'm'); text(6.75,7, '0', 'color', 'm'); text(6.75,8, '0', 'color', 'm');
text(7.75,1, '-72', 'color', 'm'); text(7.75,2, '0', 'color', 'm'); text(7.75,3, '0', 'color', 'm'); text(7.75,4, '0', 'color', 'm'); text(7.75,5, '0', 'color', 'm'); text(7.75,6, '0', 'color', 'm'); text(7.75,7, '0', 'color', 'm'); text(7.75,8, '0', 'color', 'm');
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
 

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dequantize wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dequantize_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jFrame = get(handle(gcf),'JavaFrame')
jFrame.setMaximized(true);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
menu;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
zigzag;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
invDct;


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
