function varargout = recon(varargin)
% RECON MATLAB code for recon.fig
%      RECON, by itself, creates a new RECON or raises the existing
%      singleton*.
%
%      H = RECON returns the handle to a new RECON or the handle to
%      the existing singleton*.
%
%      RECON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECON.M with the given input arguments.
%
%      RECON('Property','Value',...) creates a new RECON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before recon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to recon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help recon

% Last Modified by GUIDE v2.5 26-Jan-2015 09:45:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @recon_OpeningFcn, ...
                   'gui_OutputFcn',  @recon_OutputFcn, ...
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


% --- Executes just before recon is made visible.
function recon_OpeningFcn(hObject, eventdata, handles, varargin)
set(gcf,'units','normalized','outerposition',[0 0 0.9 0.9])
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to recon (see VARARGIN)

% Choose default command line output for recon
handles.output = hObject;
axes(handles.axes1)
imshow('image.jpg')

    
axes(handles.axes2)
imshow('image1.jpg')
% Update handles structure
guidata(hObject, handles);
set(handles.text8,'String','FileSize: 366')

% UIWAIT makes recon wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = recon_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jFrame = get(handle(gcf),'JavaFrame')
jFrame.setMaximized(true);
% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch get(handles.popupmenu1,'Value')
    case 1
      
     Q=[
       
16 11 10 16 24 40 51 61;
12 12 14 19 26 58 60 55;
14 13 16 24 40 57 69 56;
14 17 22 29 51 87 80 62;
18 22 37 56 68 109 103 520;
24 35 55 64 81 194 520 520;
49 64 78 87 103 520 520 520;
72 92 95 98 520 520 520 520;];

    A = [    185 205 215 235 190 210 250 235
         240 230 215 190 185 190 170 225
         35  60   25 200 210  20  35  40 
         124   15  50 235 220  40  50  20 
         100   55  50 230 215  65  60  40 
         95   100  50 210 215  50  55  50 
         100   115  50 210 200  45  40  40 
         185 205 215 235 190  55  85  25 ];
    I = mat2gray(A);
    T = dct2(A); 
    
quant = round(T./Q);
huffman = (quant([
    1;
    9;2;
    3;10;17; 
    25;18;11;4; 
    5;12;19;26;33;
    41;34;27;20;13;6;
    7;14;21;28;35;42;49;57; 
    50;43;36;29;22;15;8;
    16;23;30;37;44;51;58; 
    59;52;45;38;31;24;  
    32;39;46;53;60; 
    61;54;47;40; 
    48;55;62; 
    63;56; 
    64]));

ihuffman = (huffman([   1  2  6  7 15 16 28 29;
                        3  5  8  14 17 27 30 43; 
                        4  9  13 18 26 31 42 44;
                        10 12 19 25 32 41 45 54;
                        11 20 24 33 40 46 53 55;
                        21 23 34 39 47 52 56 61;
                        22 35 38 48 51 57 60 62;
                        36 37 49 50 58 59 63 64;]));
                    
dequant = ihuffman.*Q;
X = round(idct2(dequant));
C = mat2gray(X);

    axes(handles.axes2);
    imshow(C);

set(handles.text9,'String','Percentage of data lost: 16% ')
set(handles.text5,'String',sprintf('Not much data has been lost, hence the %s similarity between the new image and the original one. If we think back towards the dct 54 of the coefficients have been selected, meaning 10 of the values have been forced to 0. Now when the image is compressed to a jpeg file, the size of the file while be proportionate to the amount of dct coefficients that have been selected. ', char(10)))
    case 2
Q=[ 16 11 10 16 24 40 51 61;
12 12 14 19 26 58 60 520;
14 13 16 24 40 57 520 520;
14 17 22 29 51 520 520 520;
18 22 37 56 520 520 520 520;
24 35 55 520 520 520 520 520;
49 64 520 520 520 520 520 520;
72 520 520 520 520 520 520 520;];

    A = [    185 205 215 235 190 210 250 235
         240 230 215 190 185 190 170 225
         35  60   25 200 210  20  35  40 
         124   15  50 235 220  40  50  20 
         100   55  50 230 215  65  60  40 
         95   100  50 210 215  50  55  50 
         100   115  50 210 200  45  40  40 
         185 205 215 235 190  55  85  25 ];
    
    T = dct2(A); 
    
quant = round(T./Q);
huffman = (quant([
    1;
    9;2;
    3;10;17; 
    25;18;11;4; 
    5;12;19;26;33;
    41;34;27;20;13;6;
    7;14;21;28;35;42;49;57; 
    50;43;36;29;22;15;8;
    16;23;30;37;44;51;58; 
    59;52;45;38;31;24;  
    32;39;46;53;60; 
    61;54;47;40; 
    48;55;62; 
    63;56; 
    64]));

ihuffman = (huffman([   1  2  6  7 15 16 28 29;
                        3  5  8  14 17 27 30 43; 
                        4  9  13 18 26 31 42 44;
                        10 12 19 25 32 41 45 54;
                        11 20 24 33 40 46 53 55;
                        21 23 34 39 47 52 56 61;
                        22 35 38 48 51 57 60 62;
                        36 37 49 50 58 59 63 64;]));
                    
dequant = ihuffman.*Q;
X = round(idct2(dequant));
C = mat2gray(X);

    axes(handles.axes2);
    imshow(C);
set(handles.text9,'String','Percentage of data lost: 44% ')
set(handles.text5,'String',sprintf('Almost half of the important data has been lost in this image. There is are differences %s in the appearance of the image. These differences reduce the file size as 28 out of the 64 coefficients are not being used.  ', char(10)))
    
    case 3
        Q=[
16 11 10 520 520 520 520 520;
12 12 520 520 520 520 520 520;
14 520 520 520 520 520 520 520;
520 520 520 520 520 520 520 520;
520 520 520 520 520 520 520 520;
520 520 520 520 520 520 520 520;
520 520 520 520 520 520 520 520;
520 520 520 520 520 520 520 520;];

    A = [    185 205 215 235 190 210 250 235
         240 230 215 190 185 190 170 225
         35  60   25 200 210  20  35  40 
         124   15  50 235 220  40  50  20 
         100   55  50 230 215  65  60  40 
         95   100  50 210 215  50  55  50 
         100   115  50 210 200  45  40  40 
         185 205 215 235 190  55  85  25 ];
    I = mat2gray(A);
    T = dct2(A); 
    
quant = round(T./Q);
huffman = (quant([
    1;
    9;2;
    3;10;17; 
    25;18;11;4; 
    5;12;19;26;33;
    41;34;27;20;13;6;
    7;14;21;28;35;42;49;57; 
    50;43;36;29;22;15;8;
    16;23;30;37;44;51;58; 
    59;52;45;38;31;24;  
    32;39;46;53;60; 
    61;54;47;40; 
    48;55;62; 
    63;56; 
    64]));

ihuffman = (huffman([   1  2  6  7 15 16 28 29;
                        3  5  8  14 17 27 30 43; 
                        4  9  13 18 26 31 42 44;
                        10 12 19 25 32 41 45 54;
                        11 20 24 33 40 46 53 55;
                        21 23 34 39 47 52 56 61;
                        22 35 38 48 51 57 60 62;
                        36 37 49 50 58 59 63 64;]));
                    
dequant = ihuffman.*Q;
X = round(idct2(dequant));
C = mat2gray(X);

    axes(handles.axes2)
    imshow(C);
    set(handles.text9,'String','Percentage of data lost: 91%')
    set(handles.text5,'String',sprintf('Only 9 percent of the data has been left in this new image 6 out of the 64 %s coefficents have been selected resulting in a severe loss of data. This loss of data is a direct translation of the file size. ', char(10)))
        
end


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
menu;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
invDct;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)



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
