function varargout = invDct(varargin)
% INVDCT MATLAB code for invDct.fig
%      INVDCT, by itself, creates a new INVDCT or raises the existing
%      singleton*.
%
%      H = INVDCT returns the handle to a new INVDCT or the handle to
%      the existing singleton*.
%
%      INVDCT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVDCT.M with the given input arguments.
%
%      INVDCT('Property','Value',...) creates a new INVDCT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before invDct_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to invDct_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help invDct

% Last Modified by GUIDE v2.5 23-Jan-2015 14:51:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @invDct_OpeningFcn, ...
                   'gui_OutputFcn',  @invDct_OutputFcn, ...
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


% --- Executes just before invDct is made visible.
function invDct_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to invDct (see VARARGIN)

% Choose default command line output for invDct
handles.output = hObject;

d = [185 205 215 235 190 210 250 235;
         240 230 215 190 185 190 170 225;
         35 60 25 200 210 20 35 40; 
         124 15 50 235 220 40 50 20; 
         100 55 50 230 215 65 60 40; 
         95 100 50 210 215 50 55 50; 
         100 115 50 210 200 45 40 40; 
         185 205 215 235 190 55 85 25; ];
    A = dct2(d)
     
     q = [16 11 10 16 24 40 51 61;
12 12 14 19 26 58 60 55;
14 13 16 24 40 57 69 56;
14 17 22 29 51 87 80 62;
18 22 37 56 68 109 103 77;
24 35 55 64 81 194 113 92;
49 64 78 87 103 121 120 101;
72 92 95 98 121 100 103 99;];




T = [
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 0 0 0 ;];

axes(handles.axes1)
imshow(T)
text(0.55,1, '1056', 'color', 'm'); text(0.75,2, '121', 'color', 'm'); text(0.75,3, '-250', 'color', 'm'); text(0.75,4, '0', 'color', 'm'); text(0.75,5, '240', 'color', 'm'); text(0.75,6, '40', 'color', 'm'); text(0.75,7, '-153', 'color', 'm'); text(0.75,8, '0', 'color', 'm');
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



G =[ 206   177   232   244   182   196   244   239;
   205   240   203   184   189   178   198   221;
    51    60    49   189   210    49    18    34;
   105    10    11   258   226    18    46    25;
   129    64    32   230   198    34    90    31;
    78    94    47   219   244    53    48    45;
   106   109    61   189   193    22    27    57;
   189   198   205   256   166    79   108    18;];
   
axes(handles.axes2)
imshow(T)
text(0.75,1, '206', 'color', 'm'); text(0.75,2, '177', 'color', 'm'); text(0.75,3, '232', 'color', 'm'); text(0.75,4, '244', 'color', 'm'); text(0.75,5, '182', 'color', 'm'); text(0.75,6, '196', 'color', 'm'); text(0.75,7, '244', 'color', 'm'); text(0.75,8, '239', 'color', 'm');
text(1.75,1, '205', 'color', 'm'); text(1.75,2, '240', 'color', 'm'); text(1.75,3, '203', 'color', 'm'); text(1.75,4, '184', 'color', 'm'); text(1.75,5, '189', 'color', 'm'); text(1.75,6, '178', 'color', 'm'); text(1.75,7, '198', 'color', 'm'); text(1.75,8, '221', 'color', 'm');
text(2.75,1, '51', 'color', 'm'); text(2.75,2, '60', 'color', 'm'); text(2.75,3, '49', 'color', 'm'); text(2.75,4, '189', 'color', 'm'); text(2.75,5, '210', 'color', 'm'); text(2.75,6, '49', 'color', 'm'); text(2.75,7, '18', 'color', 'm'); text(2.75,8, '34', 'color', 'm'); 
text(3.75,1, '105', 'color', 'm'); text(3.75,2, '10', 'color', 'm'); text(3.75,3, '11', 'color', 'm'); text(3.75,4, '258', 'color', 'm'); text(3.75,5, '226', 'color', 'm'); text(3.75,6, '81', 'color', 'm'); text(3.75,7, '46', 'color', 'm'); text(3.75,8, '25', 'color', 'm');
text(4.75,1, '129', 'color', 'm'); text(4.75,2, '64', 'color', 'm'); text(4.75,3, '32', 'color', 'm'); text(4.75,4, '230', 'color', 'm'); text(4.75,5, '198', 'color', 'm'); text(4.75,6, '34', 'color', 'm'); text(4.75,7, '90', 'color', 'm'); text(4.75,8, '31', 'color', 'm');
text(5.75,1, '78', 'color', 'm'); text(5.75,2, '94', 'color', 'm'); text(5.75,3, '47', 'color', 'm'); text(5.75,4, '219', 'color', 'm'); text(5.75,5, '244', 'color', 'm'); text(5.75,6, '53', 'color', 'm'); text(5.75,7, '48', 'color', 'm'); text(5.75,8, '45', 'color', 'm');
text(6.75,1, '106', 'color', 'm'); text(6.75,2, '109', 'color', 'm'); text(6.75,3, '61', 'color', 'm'); text(6.75,4, '189', 'color', 'm'); text(6.75,5, '193', 'color', 'm'); text(6.75,6, '22', 'color', 'm'); text(6.75,7, '27', 'color', 'm'); text(6.75,8, '57', 'color', 'm');
text(7.75,1, '189', 'color', 'm'); text(7.75,2, '198', 'color', 'm'); text(7.75,3, '205', 'color', 'm'); text(7.75,4, '256', 'color', 'm'); text(7.75,5, '166', 'color', 'm'); text(7.75,6, '79', 'color', 'm'); text(7.75,7, '108', 'color', 'm'); text(7.75,8, '18', 'color', 'm');
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

% UIWAIT makes invDct wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = invDct_OutputFcn(hObject, eventdata, handles) 
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
dequantize;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)
recon;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure1)


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
