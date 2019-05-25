function varargout = Exp_subject_info(varargin)
%%
% EXP_SUBJECT_INFO MATLAB code for Exp_subject_info.fig
% Last Modified by GUIDE v2.5 06-Feb-2017 16:49:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Exp_subject_info_OpeningFcn, ...
                   'gui_OutputFcn',  @Exp_subject_info_OutputFcn, ...
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


function Exp_subject_info_OpeningFcn(hObject, eventdata, handles, varargin)
%%
handles.original = pwd  ;                %store present directory

handles.output = hObject;

handles.Hand = 'Right';
guidata(hObject, handles);

uiwait(handles.first_step);


function varargout = Exp_subject_info_OutputFcn(hObject, eventdata, handles) 

cd(handles.original)
varargout{1} = handles;
delete(gcf);




function edit_subName_Callback(hObject, eventdata, handles)
%%
handles.Name = get(hObject,'String');
guidata(hObject,handles);

function edit_subName_CreateFcn(hObject, eventdata, handles)
%%
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit_subNumber_Callback(hObject, eventdata, handles)
%%
handles.Number = get(hObject,'String');
guidata(hObject,handles);


function edit_subNumber_CreateFcn(hObject, eventdata, handles)
%%
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes when selected object is changed in hand_group.
function hand_group_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in hand_group 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
eventdata.NewValue

switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'hand_Right'
        handles.Hand = 'Right';
    case 'hand_Left'
        handles.Hand = 'Left';
end
guidata(hObject,handles);


function edit_subCond_Callback(hObject, eventdata, handles)
%%
handles.Cond = get(hObject,'String')
if strcmp(handles.Cond,'-')
    handles.Cond = 'NA';
end
guidata(hObject,handles);


function edit_subCond_CreateFcn(hObject, eventdata, handles)
%%
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function finish_Callback(hObject, eventdata, handles)
%%

uiresume(handles.first_step);

%delete(gcf);
% pointsSpec;

function edit_subTrials_Callback(hObject, eventdata, handles)
%%
handles.Trials = get(hObject,'String');
guidata(hObject,handles);

function edit_subTrials_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
