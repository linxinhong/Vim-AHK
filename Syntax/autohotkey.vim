" Vim syntax file
" Language:         AutoHotkey script file
" Maintainer:       Nikolai Weibull <now@bitwi.se> , linxinhong
" Latest Revision:  2015-06-21

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

syn keyword autohotkeyTodo
      \ contained
      \ TODO FIXME XXX NOTE

syn cluster autohotkeyCommentGroup
      \ contains=
      \   autohotkeyTodo,
      \   @Spell

syn match   autohotkeyComment
      \ display
      \ contains=@autohotkeyCommentGroup
      \ '`\@<!;.*$'

syn region  autohotkeyComment
      \ contains=@autohotkeyCommentGroup
      \ matchgroup=autohotkeyCommentStart
      \ start='/\*'
      \ end='\*/'

syn match   autohotkeyEscape
      \ display
      \ '`.'

syn match   autohotkeyHotkey
      \ contains=autohotkeyKey,
      \   autohotkeyHotkeyDelimiter
      \ display
      \ '^.\{-}::'

syn match   autohotkeyKey
      \ contained
      \ display
      \ '^.\{-}'

syn match   autohotkeyDelimiter
      \ contained
      \ display
      \ '::'

syn match   autohotkeyHotstringDefinition
      \ contains=autohotkeyHotstring,
      \   autohotkeyHotstringDelimiter
      \ display
      \ '^:\%(B0\|C1\|K\d\+\|P\d\+\|S[IPE]\|Z\d\=\|[*?COR]\)*:.\{-}::'

syn match   autohotkeyHotstring
      \ contained
      \ display
      \ '.\{-}'

syn match   autohotkeyHotstringDelimiter
      \ contained
      \ display
      \ '::'

syn match   autohotkeyHotstringDelimiter
      \ contains=autohotkeyHotstringOptions
      \ contained
      \ display
      \ ':\%(B0\|C1\|K\d\+\|P\d\+\|S[IPE]\|Z\d\=\|[*?COR]\):'

syn match   autohotkeyHotstringOptions
      \ contained
      \ display
      \ '\%(B0\|C1\|K\d\+\|P\d\+\|S[IPE]\|Z\d\=\|[*?COR]\)'

syn region autohotkeyString
      \ display
      \ oneline
      \ matchgroup=autohotkeyStringDelimiter
      \ start=+"+
      \ end=+"+
      \ contains=autohotkeyEscape

syn region autohotkeyVariable
      \ display
      \ oneline
      \ contains=autohotkeyBuiltinVariable
      \ matchgroup=autohotkeyVariableDelimiter
      \ start="%"
      \ end="%"
      \ keepend
syn keyword autohotkeyhotkeyname
      \ shift lshift rshift alt lalt ralt control lcontrol rcontrol
      \ ctrl lctrl rctrl lwin rwin appskey
      \ altdown altup shiftdown shiftup ctrldown ctrlup
      \ lwindown lwinup rwindown rwinup
      \ lbutton rbutton mbutton wheelup wheeldown xbutton1 xbutton2
      \ joy1 joy2 joy3 joy4 joy5 joy6 joy7 joy8 joy9 joy10 joy11 joy12 joy13 joy14
      \ joy15 joy16 joy17 joy18 joy19 joy20 joy21 joy22 joy23 joy24 joy25 joy26 joy27
      \ joy28 joy29 joy30 joy31 joy32
      \ joyx joyy joyz joyr joyu joyv joypov joyname joybuttons joyaxes joyinfo
      \ space tab enter escape esc backspace bs delete del insert ins pgup pgdn
      \ home end up down left right
      \ printscreen ctrlbreak pause scrolllock capslock numlock
      \ numpad0 numpad1 numpad2 numpad3 numpad4 numpad5 numpad6 numpad7 numpad8 numpad9
      \ numpadmult numpadadd numpadsub numpaddiv numpaddot numpaddel numpadins
      \ numpadclear numpadup numpaddown numpadleft numpadright numpadhome numpadend
      \ numpadpgup numpadpgdn numpadenter
      \ f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12
      \ f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24
      \ browser_back browser_forward browser_refresh browser_stop browser_search
      \ browser_favorites browser_home volume_mute volume_down volume_up
      \ media_next media_prev media_stop media_play_pause
      \ launch_mail launch_media launch_app1 launch_app2 
      \ blind click raw wheelleft wheelright

syn keyword autohotkeyBuiltinVariable
      \ a_ahkpath a_ahkversion a_appdata a_appdatacommon a_autotrim a_batchlines
      \ a_caretx a_carety a_computername a_controldelay a_cursor
      \ a_dd a_ddd a_dddd a_defaultmousespeed a_desktop a_desktopcommon
      \ a_detecthiddentext a_detecthiddenwindows a_endchar
      \ a_eventinfo a_exitreason a_formatfloat a_formatinteger a_gui a_guievent
      \ a_guicontrol a_guicontrolevent a_guiheight a_guiwidth a_guix a_guiy a_hour
      \ a_iconfile a_iconhidden a_iconnumber a_icontip a_index
      \ a_ipaddress1 a_ipaddress2 a_ipaddress3 a_ipaddress4 a_isadmin a_iscompiled
      \ a_issuspended a_keydelay a_language a_lasterror a_linefile a_linenumber
      \ a_loopfield a_loopfileattrib a_loopfiledir a_loopfileext a_loopfilefullpath
      \ a_loopfilelongpath a_loopfilename a_loopfileshortname a_loopfileshortpath
      \ a_loopfilesize a_loopfilesizekb a_loopfilesizemb a_loopfiletimeaccessed
      \ a_loopfiletimecreated a_loopfiletimemodified a_loopreadline a_loopregkey
      \ a_loopregname a_loopregsubkey a_loopregtimemodified a_loopregtype
      \ a_mday a_min a_mm a_mmm a_mmmm a_mon a_mousedelay a_msec a_mydocuments
      \ a_now a_nowutc a_numbatchlines a_ostype a_osversion a_priorhotkey
      \ a_programfiles a_programs a_programscommon a_screenheight a_screenwidth
      \ a_scriptdir a_scriptfullpath a_scriptname a_sec a_space a_startmenu
      \ a_startmenucommon a_startup a_startupcommon a_stringcasesense a_tab a_temp
      \ a_thishotkey a_thismenu a_thismenuitem a_thismenuitempos a_tickcount
      \ a_timeidle a_timeidlephysical a_timesincepriorhotkey a_timesincethishotkey
      \ a_titlematchmode a_titlematchmodespeed a_username a_wday a_windelay a_windir
      \ a_workingdir a_yday a_year a_yweek a_yyyy
      \ clipboard clipboardall comspec errorlevel programfiles
      \ a_thisfunc a_thislabel a_ispaused a_iscritical a_isunicode a_ptrsize
      \ a_scripthwnd a_priorkey a_is64bitos a_regview a_screendpi a_fileencoding

syn match   autohotkeyBuiltinVariable
      \ contained
      \ display
      \ '%\d\+%'

syn keyword autohotkeyCommand
      \ ClipWait EnvGet EnvSet EnvUpdate
      \ Drive DriveGet DriveSpaceFree FileAppend FileCopy FileCopyDir
      \ FileCreateDir FileCreateShortcut FileDelete FileGetAttrib
      \ FileGetShortcut FileGetSize FileGetTime FileGetVersion FileInstall
      \ FileMove FileMoveDir FileReadLine FileRead FileRecycle FileRecycleEmpty
      \ FileRemoveDir FileSelectFolder FileSelectFile FileSetAttrib FileSetTime
      \ IniDelete IniRead IniWrite SetWorkingDir
      \ SplitPath
      \ Gui GuiControl GuiControlGet IfMsgBox InputBox MsgBox Progress 
      \ SplashImage SplashTextOn SplashTextOff ToolTip TrayTip

syn keyword autohotkeyCommand2
      \ Hotkey ListHotkeys BlockInput ControlSend ControlSendRaw GetKeyState
      \ KeyHistory KeyWait Input Send SendRaw SendInput SendPlay SendEvent
      \ SendMode SetKeyDelay SetNumScrollCapsLockState SetStoreCapslockMode
      \ EnvAdd EnvDiv EnvMult EnvSub Random SetFormat Transform
      \ AutoTrim BlockInput CoordMode Critical Edit ImageSearch
      \ ListLines ListVars Menu OutputDebug PixelGetColor PixelSearch
      \ SetBatchLines SetEnv SetTimer SysGet Thread Transform URLDownloadToFile
      \ Click ControlClick MouseClick MouseClickDrag MouseGetPos MouseMove
      \ SetDefaultMouseSpeed SetMouseDelay
      \ Process Run RunWait RunAs Shutdown Sleep

syn keyword autohotkeyCommand3
      \ RegDelete RegRead RegWrite
      \ SoundBeep SoundGet SoundGetWaveVolume SoundPlay SoundSet
      \ SoundSetWaveVolume
      \ FormatTime IfInString IfNotInString Sort StringCaseSense StringGetPos
      \ StringLeft StringRight StringLower StringUpper StringMid StringReplace
      \ StringSplit StringTrimLeft StringTrimRight
      \ Control ControlClick ControlFocus ControlGet ControlGetFocus
      \ ControlGetPos ControlGetText ControlMove ControlSend ControlSendRaw
      \ ControlSetText Menu PostMessage SendMessage SetControlDelay
      \ WinMenuSelectItem GroupActivate GroupAdd GroupClose GroupDeactivate
      \ DetectHiddenText DetectHiddenWindows SetTitleMatchMode SetWinDelay

syn keyword autohotkeyCommand4
      \ StatusBarGetText StatusBarWait WinActivate WinActivateBottom WinClose
      \ WinGet WinGetActiveStats WinGetActiveTitle WinGetClass WinGetPos
      \ WinGetText WinGetTitle WinHide WinKill WinMaximize WinMinimize
      \ WinMinimizeAll WinMinimizeAllUndo WinMove WinRestore WinSet
      \ WinSetTitle WinShow WinWait WinWaitActive WinWaitNotActive WinWaitClose
      \ processname processpath minmax controllist statuscd filesystem setlabel join
      \ ahk_id ahk_pid ahk_class ahk_group ahk_exe
      \ alwaysontop mainwindow nomainwindow useerrorlevel
      \ altsubmit hscroll vscroll imagelist wantctrla wantf2 vis visfirst
      \ wantreturn backgroundtrans
      \ minimizebox maximizebox sysmenu toolwindow exstyle

syn keyword autohotkeyCommand5
      \ check3 checkedgray readonly notab
      \ lastfound lastfoundexist
      \ alttab shiftalttab alttabmenu alttabandmenu alttabmenudismiss
      \ controllisthwnd hwnd
      \ deref pow bitnot bitand bitor bitxor bitshiftleft bitshiftright
      \ sendandmouse mousemove mousemoveoff
      \ hkey_local_machine hkey_users hkey_current_user hkey_classes_root
      \ hkey_current_config hklm hku hkcu hkcr hkcc
      \ reg_sz reg_expand_sz reg_multi_sz reg_dword reg_qword reg_binary
      \ reg_link reg_resource_list reg_full_resource_descriptor
      \ reg_resource_requirements_list reg_dword_big_endian
      \ regex
      \ pixel mouse screen relative rgb
      \ low belownormal normal abovenormal high realtime
      \ integerfast floatfast
      \ alpha upper lower alnum time date
      \ cancel destroy center
      \ read parse
      \ seconds minutes hours days
      \ label serial type status
      \ count list capacity eject lock unlock
      \ not or and IN
      \ is integer float number digit xdigit between 
      \ transcolor redraw id 

syn keyword autohotkeyCommand6
      \ idlast topmost 

syn keyword autohotkeyCommand7
      \ logoff close error single shutdown menu exit reload
      \ tray add rename check uncheck togglecheck enable disable toggleenable default
      \ nodefault standard nostandard color delete deleteall icon noicon tip click
      \ show
      \ edit progress hotkey text picture pic groupbox button link
      \ checkbox radio dropdownlist ddl combobox statusbar treeview
      \ listbox listview datetime monthcal updown slider tab tab2 activex custom
      \ iconsmall tile report sortdesc nosort nosorthdr grid hdr autosize range
      \ xm ym ys xs xp yp dpiscale

syn keyword autohotkeyCommand8
      \ margin owndialogs guiescape guiclose guisize guicontextmenu guidropfiles
      \ tabstop section wrap border top bottom buttons
      \ expand first lines
      \ number uppercase lowercase limit password multi group background
      \ bold italic strike underline norm theme caption delimiter
      \ flash style checked
      \ password hidden left right center section move
      \ focus hide choose choosestring text pos enabled disabled visible

syn keyword autohotkeyCommand9
      \ notimers interrupt priority waitclose unicode tocodepage fromcodepag
      \ yes no ok cancel abort retry ignore force
      \ on off all send wanttab
      \ monitorcount monitorprimary monitorname
      \ monitorworkarea pid
      \ this base extends __get __set __call __delete __new new
      \ useunsetlocal useunsetglobal useenv localsameasglobal

syn keyword autohotkeyFunction
      \ InStr RegExMatch RegExReplace StrLen SubStr Asc Chr
      \ DllCall VarSetCapacity WinActive WinExist IsLabel OnMessage 
      \ Abs Ceil Exp Floor Log Ln Mod Round Sqrt Sin Cos Tan ASin ACos ATan
      \ FileExist GetKeyState FileEncoding SetRegView
      \ NumGet NumPut RegisterCallback
      \ IL_Add IL_Create IL_Destroy IsFunc LV_Add LV_Delete LV_DeleteCol 
      \ LV_GetCount LV_GetNext LV_GetText LV_Insert LV_InsertCol LV_Modify
      \ LV_ModifyCol LV_SetImageList
      \ SB_Seticon SB_SetParts SB_SetText
      \ TV_Add TV_Delete TV_GetChild TV_GetCount TV_GetNext TV_Get TV_GetParent
      \ TV_GetPrev TV_GetSelection TV_GetText TV_Modify TV_SetImageList
      \ Trim LTrim RTrim FileOpen StrGet StrPut
      \ object array isobject objinsert objremove objminindex objmaxindex objsetcapacity objgetcapacity 
      \ objgetaddress objnewenum objaddref objrelease objhaskey objclone 
      \ _newenum comobjcreate comobjget comobjconnect comobjerror
      \ comobjactive comobject comobjenwrap comobjunwrap comobjmissing comobjtype comobjvalue comobjarray 
      \ comobjquery comobjflags func 
      \ getkeyname getkeyvk getkeysc isbyref exception strsplit

syn keyword autohotkeyStatement
      \ Break Continue Exit ExitApp Gosub Goto OnExit Pause Return Else
      \ Suspend Reload
      \ byRef Class try catch throw finally

syn keyword autohotkeyRepeat
      \ Loop For While Until

syn keyword autohotkeyConditional
      \ if ifequal ifexist ifgreater ifgreaterorequal ifinstring else
      \ ifless iflessorequal ifmsgbox ifnotequal ifnotexist ifnotinstring ifwinactive 
      \ ifwinexist ifwinnotactive ifwinnotexist

syn match   autohotkeyPreProcStart
      \ nextgroup=
      \   autohotkeyInclude,
      \   autohotkeyPreProc
      \ skipwhite
      \ display
      \ '^\s*\zs#'

syn keyword autohotkeyInclude
      \ contained
      \ Include
      \ IncludeAgain

syn keyword autohotkeyPreProc
      \ contained
      \ HotkeyInterval HotKeyModifierTimeout
      \ Hotstring
      \ IfWinActive IfWinNotActive IfWinExist IfWinNotExist
      \ MaxHotkeysPerInterval MaxThreads MaxThreadsBuffer MaxThreadsPerHotkey
      \ UseHook InstallKeybdHook InstallMouseHook Warn
      \ KeyHistory
      \ NoTrayIcon SingleInstance
      \ WinActivateForce
      \ AllowSameLineComments
      \ ClipboardTimeout
      \ CommentFlag
      \ ErrorStdOut
      \ EscapeChar
      \ MaxMem
      \ NoEnv
      \ Persistent



syn match   autohotkeyNumbers
      \ display
      \ transparent
      \ contains=
      \   autohotkeyInteger,
      \   autohotkeyFloat
      \ '\<\d\|\.\d'

syn match   autohotkeyInteger
      \ contained
      \ display
      \ '\d\+\>'

syn match   autohotkeyInteger
      \ contained
      \ display
      \ '0x\x\+\>'

syn match   autohotkeyFloat
      \ contained
      \ display
      \ '\d\+\.\d*\|\.\d\+\>'

syn keyword autohotkeyType
      \ local
      \ global
      \ Static

syn keyword autohotkeyBoolean
      \ true
      \ false

" TODO: Shouldn't we look for g:, b:,  variables before defaulting to
" something?
if exists("g:autohotkey_syntax_sync_minlines")
  let b:autohotkey_syntax_sync_minlines = g:autohotkey_syntax_sync_minlines
else
  let b:autohotkey_syntax_sync_minlines = 50
endif
exec "syn sync ccomment autohotkeyComment minlines=" . b:autohotkey_syntax_sync_minlines

hi def link autohotkeyTodo                Todo
hi def link autohotkeyComment             Comment
hi def link autohotkeyCommentStart        autohotkeyComment
hi def link autohotkeyEscape              Special
hi def link autohotkeyhotkeyname          Type
hi def link autohotkeyHotkey              Type
hi def link autohotkeyKey                 Type
hi def link autohotkeyDelimiter           Delimiter
hi def link autohotkeyHotstringDefinition Type
hi def link autohotkeyHotstring           Type
hi def link autohotkeyHotstringDelimiter  autohotkeyDelimiter
hi def link autohotkeyHotstringOptions    Special
hi def link autohotkeyString              String
hi def link autohotkeyStringDelimiter     autohotkeyString
hi def link autohotkeyVariable            Identifier
hi def link autohotkeyVariableDelimiter   autohotkeyVariable
hi def link autohotkeyBuiltinVariable     Macro
hi def link autohotkeyCommand             Keyword
hi def link autohotkeyCommand1            Keyword
hi def link autohotkeyCommand2            Keyword
hi def link autohotkeyCommand3            Keyword
hi def link autohotkeyCommand4            Keyword
hi def link autohotkeyCommand5            Keyword
hi def link autohotkeyCommand6            Keyword
hi def link autohotkeyCommand7            Keyword
hi def link autohotkeyCommand8            Keyword
hi def link autohotkeyCommand9            Keyword
hi def link autohotkeyFunction            Function
hi def link autohotkeyStatement           autohotkeyCommand
hi def link autohotkeyRepeat              Repeat
hi def link autohotkeyConditional         Conditional
hi def link autohotkeyPreProcStart        PreProc
hi def link autohotkeyInclude             Include
hi def link autohotkeyPreProc             PreProc
hi def link autohotkeyNumber              Number
hi def link autohotkeyInteger             autohotkeyNumber
hi def link autohotkeyFloat               autohotkeyNumber
hi def link autohotkeyType                Type
hi def link autohotkeyBoolean             Boolean

let b:current_syntax = "autohotkey"

let &cpo = s:cpo_save
unlet s:cpo_save
