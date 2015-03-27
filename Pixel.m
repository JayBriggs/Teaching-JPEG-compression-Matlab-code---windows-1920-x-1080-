function varargout = Pixel(varargin)
% PIXEL MATLAB code for Pixel.fig
%      PIXEL, by itself, creates a new PIXEL or raises the existing
%      singleton*.
%
%      H = PIXEL returns the handle to a new PIXEL or the handle to
%      the existing singleton*.
%
%      PIXEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIXEL.M with the given input arguments.
%
%      PIXEL('Property','Value',...) creates a new PIXEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Pixel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Pixel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Pixel

% Last Modified by GUIDE v2.5 22-Jan-2015 12:50:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Pixel_OpeningFcn, ...
                   'gui_OutputFcn',  @Pixel_OutputFcn, ...
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


% --- Executes just before Pixel is made visible.
function Pixel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Pixel (see VARARGIN)

% Choose default command line output for Pixel

% adding the letter 'J' image to the axes
handles.output = hObject;
A = [    185 205 215 235 190 210 250 235
         240 230 215 190 185 190 170 225
         35  60   25 200 210  20  35  40 
         124   15  50 235 220  40  50  20 
         100   55  50 230 215  65  60  40 
         95   100  50 210 215  50  55  50 
         100   115  50 210 200  45  40  40 
         185 205 215 235 190  55  85  25 ];
I = mat2gray(A);
axes(handles.axes1)
imshow(I);
     
% adding the values according to the grayscale on top of the image
     text(0.75,1, '185', 'color', 'm'); text(0.75,2, '205', 'color', 'm'); text(0.75,3, '215', 'color', 'm'); text(0.75,4, '235', 'color', 'm'); text(0.75,5, '190', 'color', 'm'); text(0.75,6, '210', 'color', 'm'); text(0.75,7, '250', 'color', 'm'); text(0.75,8, '235', 'color', 'm');
text(1.75,1, '240', 'color', 'm'); text(1.75,2, '230', 'color', 'm'); text(1.75,3, '215', 'color', 'm'); text(1.75,4, '190', 'color', 'm'); text(1.75,5, '185', 'color', 'm'); text(1.75,6, '190', 'color', 'm'); text(1.75,7, '170', 'color', 'm'); text(1.75,8, '225', 'color', 'm');
text(2.75,1, '35', 'color', 'm'); text(2.75,2, '60', 'color', 'm'); text(2.75,3, '25', 'color', 'm'); text(2.75,4, '200', 'color', 'm'); text(2.75,5, '210', 'color', 'm'); text(2.75,6, '20', 'color', 'm'); text(2.75,7, '35', 'color', 'm'); text(2.75,8, '40', 'color', 'm'); 
text(3.75,1, '124', 'color', 'm'); text(3.75,2, '15', 'color', 'm'); text(3.75,3, '50', 'color', 'm'); text(3.75,4, '235', 'color', 'm'); text(3.75,5, '220', 'color', 'm'); text(3.75,6, '40', 'color', 'm'); text(3.75,7, '50', 'color', 'm'); text(3.75,8, '20', 'color', 'm');
text(4.75,1, '100', 'color', 'm'); text(4.75,2, '55', 'color', 'm'); text(4.75,3, '50', 'color', 'm'); text(4.75,4, '230', 'color', 'm'); text(4.75,5, '215', 'color', 'm'); text(4.75,6, '65', 'color', 'm'); text(4.75,7, '60', 'color', 'm'); text(4.75,8, '40', 'color', 'm');
text(5.75,1, '95', 'color', 'm'); text(5.75,2, '100', 'color', 'm'); text(5.75,3, '50', 'color', 'm'); text(5.75,4, '210', 'color', 'm'); text(5.75,5, '215', 'color', 'm'); text(5.75,6, '50', 'color', 'm'); text(5.75,7, '55', 'color', 'm'); text(5.75,8, '50', 'color', 'm');
text(6.75,1, '100', 'color', 'm'); text(6.75,2, '115', 'color', 'm'); text(6.75,3, '50', 'color', 'm'); text(6.75,4, '210', 'color', 'm'); text(6.75,5, '200', 'color', 'm'); text(6.75,6, '45', 'color', 'm'); text(6.75,7, '40', 'color', 'm'); text(6.75,8, '40', 'color', 'm');
text(7.75,1, '185', 'color', 'm'); text(7.75,2, '205', 'color', 'm'); text(7.75,3, '215', 'color', 'm'); text(7.75,4, '235', 'color', 'm'); text(7.75,5, '190', 'color', 'm'); text(7.75,6, '55', 'color', 'm'); text(7.75,7, '85', 'color', 'm'); text(7.75,8, '25', 'color', 'm');
   

% image showing the grayscale
B = [ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;
    1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100;];
   M = mat2gray(B);
   axes(handles.axes5)
   imshow(M);
  
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Pixel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Pixel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jFrame = get(handle(gcf),'JavaFrame')
jFrame.setMaximized(true);
% Get default command line output from handles structure
varargout{1} = handles.output;


% button to go back to the main menu
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
menu;

% button that goes to the dct demo
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
dctdemo;

% button that closes the current figure
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
