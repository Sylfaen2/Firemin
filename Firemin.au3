#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Dection

#AutoIt3Wrapper_If_Run

	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
	#AutoIt3Wrapper_Run_SciTE_Minimized=Y 							;~ (Y/N) Minimize SciTE while script is running. Default=N
	#AutoIt3Wrapper_Run_SciTE_OutputPane_Minimized=N				;~ (Y/N) Minimize SciTE output pane at run time. Default=N
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=Y										;~ (Y/N) Run Tidy before compilation. Default=N
	#AutoIt3Wrapper_Tidy_Stop_OnError=N								;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters= 												;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	;#AutoIt3Wrapper_AU3Check_Stop_OnWarning=						;~ (Y/N) Continue/Stop on Warnings.(Default=N)

#Autoit3Wrapper_If_Compile

	#AutoIt3Wrapper_ShowProgress=Y									;~ (Y/N) Show ProgressWindow during Compile. Default=Y
	;===============================================================================================================
	; AutoIt3 Settings
	;===============================================================================================================
	#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
	#AutoIt3Wrapper_Version=B                        				;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
	#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
	;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
	;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
	;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
	;===============================================================================================================
	; Aut2Exe Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Icon=Themes\Icons\Firemin.ico					;~ Filename of the Ico file to use for the compiled exe
	#AutoIt3Wrapper_OutFile_Type=exe								;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
	#AutoIt3Wrapper_OutFile=Firemin.exe								;~ Target exe/a3x filename.
	#AutoIt3Wrapper_OutFile_X64=Firemin_X64.exe						;~ Target exe filename for X64 compile.
	;#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
	;#AutoIt3Wrapper_UseUpx=Y										;~ (Y/N) Compress output program.  Default=Y
	;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
	#AutoIt3Wrapper_Change2CUI=N									;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
	#AutoIt3Wrapper_Compile_both=Y									;~ (Y/N) Compile both X86 and X64 in one run. Default=N
	;===============================================================================================================
	; Target Program Resource info
	;===============================================================================================================
	#AutoIt3Wrapper_Res_Comment=Firemin									;~ Comment field
	#AutoIt3Wrapper_Res_Description=Firemin						      	;~ Description field
	#AutoIt3Wrapper_Res_Fileversion=4.0.2.4616
	#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
	#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
	#AutoIt3Wrapper_Res_HiDpi=Y                      					;~ (Y/N) Compile for high DPI. Default=N
	#AutoIt3Wrapper_Res_ProductVersion=0             					;~ Product Version
	#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
	#AutoIt3Wrapper_Res_LegalCopyright=© 2016 Rizonesoft				;~ Copyright field
	#AutoIt3Wrapper_res_requestedExecutionLevel=asInvoker				;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
	#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81,Win10		;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
	;#AutoIt3Wrapper_Res_SaveSource=N									;~ (Y/N) Save a copy of the Script_source in the EXE resources. Default=N
	; If _Res_SaveSource=Y the content of Script_source depends on the _Run_Au3Stripper and #Au3Stripper_parameters directives:
	;    If _Run_Au3Stripper=Y then
	;        If #Au3Stripper_parameters=/STRIPONLY then Script_source is stripped script & stripped includes
	;        If #Au3Stripper_parameters=/STRIPONLYINCLUDES then Script_source is original script & stripped includes
	;       With any other parameters, the SaveSource directive is ignored as obfuscation is intended to protect the source
	;   If _Run_Au3Stripper=N or is not set then
	;       Scriptsource is original script only
	; AutoIt3Wrapper indicates the SaveSource action taken in the SciTE console during compilation
	; See SciTE4AutoIt3 Helpfile for more detail on Au3Stripper parameters
	;===============================================================================================================
	; Free form resource fields ... max 15
	;===============================================================================================================
	; You can use the following variables:
	;	%AutoItVer% which will be replaced with the version of AutoIt3
	;	%date% = PC date in short date format
	;	%longdate% = PC date in long date format
	;	%time% = PC timeformat
	;	eg: #AutoIt3Wrapper_Res_Field=AutoIt Version|%AutoItVer%
	#AutoIt3Wrapper_Res_Field=CompanyName|Rizonesoft
	#AutoIt3Wrapper_Res_Field=ProductName|Firemin
	#AutoIt3Wrapper_Res_Field=HomePage|https://www.rizonesoft.com
	#AutoIt3Wrapper_Res_Field=AutoItVersion|%AutoItVer%
	; Add extra ICO files to the resources
	; Use full path of the ico files to be added
	; ResNumber is a numeric value used to access the icon: TraySetIcon(@ScriptFullPath, ResNumber)
	; If no ResNumber is specified, the added icons are numbered from 201 up
	; #AutoIt3Wrapper_Res_Icon_Add=                   				;~ Filename[,ResNumber[,LanguageCode]] of ICO to be added.
	; #AutoIt3Wrapper_Res_File_Add=                   				;~ Filename[,Section [,ResName[,LanguageCode]]] to be added.
	; Add files to the resources - can be compressed
	; #AutoIt3Wrapper_Res_Remove=
	; Remove resources
	#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\FireminH.ico
	;===============================================================================================================
	; Tidy Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Tidy=N										;~ (Y/N) Run Tidy before compilation. Default=N
	;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
	;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
	;===============================================================================================================
	; Au3Stripper Settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_Au3Stripper=Y								;~ (Y/N) Run Au3Stripper before compilation. default=N
	;#Au3Stripper_Parameters=										;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
	;#Au3Stripper_Ignore_Variables=
	;===============================================================================================================
	; AU3Check settings
	;===============================================================================================================
	#AutoIt3Wrapper_Run_AU3Check=Y									;~ (Y/N) Run au3check before compilation. Default=Y
	;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
	#AutoIt3Wrapper_AU3Check_Stop_OnWarning=Y 						;~ (Y/N) Continue/Stop on Warnings.(Default=N)
	;===============================================================================================================
	; Versioning Settings
	;===============================================================================================================
	;#AutoIt3Wrapper_Versioning=V									;~ (Y/N/V) Run Versioning to update the script source. default=N
	;	V=only run when fileversion is increased by #AutoIt3Wrapper_Res_FileVersion_AutoIncrement.
	;#AutoIt3Wrapper_Versioning_Parameters=/NoPrompt				;~ /NoPrompt  : Will skip the Comments prompt
	;	/Comments  : Text to added in the Comments. It can also contain the below variables.
	;===============================================================================================================
	; RUN BEFORE AND AFTER definitions
	;===============================================================================================================
	;The following directives can contain: these variables
	;	%in% , %out%, %outx64%, %icon% which will be replaced by the fullpath\filename.
	;	%scriptdir% same as @ScriptDir and %scriptfile% = filename without extension.
	;	%fileversion% is the information from the #AutoIt3Wrapper_Res_Fileversion directive
	;	%scitedir% will be replaced by the SciTE program directory
	;	%autoitdir% will be replaced by the AutoIt3 program directory
	;#AutoIt3Wrapper_Run_Before_Admin=               				;~ (Y/N) Run subsequent Run_Before statements with #RequireAdmin. Default=N
	;#AutoIt3Wrapper_Run_After_Admin=                				;~ (Y/N) Run subsequent Run_After statements with #RequireAdmin. Default=N
	;#AutoIt3Wrapper_Run_Before=                     				;~ process to run before compilation - multiple records will be processed in sequence
	;#AutoIt3Wrapper_Run_After=                      				;~ process to run after compilation - multiple records will be processed in sequence
	;===============================================================================================================

#AutoIt3Wrapper_EndIf

#EndRegion AutoIt3Wrapper Directives Dection

Opt("CaretCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("ExpandEnvStrings", 1) ;~ 0=don't expand, 1=do expand
Opt("ExpandVarStrings", 1) ;~ 0=don't expand, 1=do expand
Opt("GUICloseOnESC", 1) ;~ 1=ESC  closes, 0=ESC won't close
Opt("GUICoordMode", 1) ;~ 1=absolute, 0=relative, 2=cell
Opt("GUIDataSeparatorChar", "|") ;~ "|" is the default
Opt("GUIOnEventMode", 1) ;~ 0=disabled, 1=OnEvent mode enabled
Opt("GUIResizeMode", 802) ;~ 0=no resizing, <1024 special resizing
Opt("GUIEventOptions", 0) ;~ 0=default, 1=just notification, 2=GUICtrlRead tab index
Opt("MouseClickDelay", 10) ;~ 10 milliseconds
Opt("MouseClickDownDelay", 10) ;~ 10 milliseconds
Opt("MouseClickDragDelay", 250) ;~ 250 milliseconds
Opt("MouseCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("MustDeclareVars", 1) ;~ 0=no, 1=require pre-declaration
Opt("PixelCoordMode", 1) ;~ 1=absolute, 0=relative, 2=client
Opt("SendAttachMode", 0) ;~ 0=don't attach, 1=do attach
Opt("SendCapslockMode", 1) ;~ 1=store and restore, 0=don't
Opt("SendKeyDelay", 5) ;~ 5 milliseconds
Opt("SendKeyDownDelay", 1) ;~ 1 millisecond
Opt("TCPTimeout", 100) ;~ 100 milliseconds
Opt("TrayAutoPause", 0) ;~ 0=no pause, 1=Pause
Opt("TrayIconDebug", 0) ;~ 0=no info, 1=debug line info
Opt("TrayIconHide", 0) ;~ 0=show, 1=hide tray icon
Opt("TrayMenuMode", 3) ;~ 0=append, 1=no default menu, 2=no automatic check, 4=menuitemID  not return
Opt("TrayOnEventMode", 1) ;~ 0=disable, 1=enable
Opt("WinDetectHiddenText", 0) ;~ 0=don't detect, 1=do detect
Opt("WinSearchChildren", 1) ;~ 0=no, 1=search children also
Opt("WinTextMatchMode", 1) ;~ 1=complete, 2=quick
Opt("WinTitleMatchMode", 1) ;~ 1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
Opt("WinWaitDelay", 250) ;~ 250 milliseconds


#include <ListviewConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <StringConstants.au3>
#include <GuiConstantsEx.au3>
#include <EditConstants.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <Constants.au3>
#include <GDIPlus.au3>
#include <GuiMenu.au3>

#include <WinAPIProc.au3>
#include <WinAPIShPath.au3>
#include <WinAPIRes.au3>

#include "Includes\ReBar_Declarations.au3"
#include "Includes\ReBar_Versioning.au3"
#include "Includes\ReBar_Functions.au3"
#include "Includes\ReBar_Logging.au3"
#include "Includes\ReBar_Splash.au3"
#include "Includes\ReBar_Icons.au3"

#include "UDF\ReBar_Options.au3"

#include "Includes\ReBar_FFLabels.au3"
#include "Includes\ReBar_Startup.au3"


;===============================================================================================================
; Declarations
;===============================================================================================================
Global $g_TrayItemOptions, $g_TrayItemExProcs, $g_TrayItemBrsrRun, $g_TrayItemBrsrRunSafe
Global $g_ChkReduceEnabled, $g_ComboReduceMill, $g_ChkCleanLimit, $g_ComboCleanLimit
Global $g_ChkBrowserAutoStart, $g_ChkExtendedProcs, $g_ChkStartWindows, $g_BtnExtendedProcs
Global $g_LblPrflPathCaption, $g_LblPrflPathExe, $g_LblProcessUsage, $g_LblProcessPeak, $g_BtnProfileBrowse
Global $g_IconProfile, $g_LblProfileTitle, $g_LblProfilePublisher, $g_SetBrowserPath, $g_SetCoreProcess
Global $g_SetBrowserName, $g_SetBoostEnabled, $g_SetBoost, $g_SetLimitEnabled, $g_SetCleanLimit
Global $g_SetStartBrowser, $g_SetEnableExtProcs, $g_SetExtendedProcs, $g_SetStartWindows
Global $g_CoreProcessUsage = 0, $g_CoreProcessPeak = 0, $g_LblSettUpdated
Global $g_ProfileBrowser = "Firefox", $g_BtnSetCancel, $g_BtnSetSave, $gH_IconProfile
Global $g_ExtProcsDlg, $g_EditExtProcs, $g_LblExtProcsUpdated, $g_BtnExtProcsSave
;===============================================================================================================


_SetWorkingDirectories()
_CheckResources($g_ReBarResFugue)
_CheckResources($g_ReBarResDoors)
_LoadSettings()
_StartCore()

Func _LoadSettings()

	$g_SetBrowserPath = IniRead($g_ReBarPathIni, $g_ReBarShortName, "BrowserPath", "C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
	$g_SetBoostEnabled = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "BoostEnabled", 1))
	$g_SetBoost = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "Boost", 300))
	$g_SetLimitEnabled = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "LimitEnabled", 1))
	$g_SetCleanLimit = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "ReduceLimit", 10))
	$g_SetStartBrowser = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "StartBrowser", 0))
	$g_SetEnableExtProcs = Int(IniRead($g_ReBarPathIni, $g_ReBarShortName, "EnableExtendedProcs", 1))
	$g_SetExtendedProcs = IniRead($g_ReBarPathIni, $g_ReBarShortName, "ExtendedProcs", "plugin-container.exe")

	_LoadBrowser($g_SetBrowserPath)

EndFunc


Func _ClearProcessesWorkingSet()

	If $g_SetBoostEnabled Then
		If $g_SetLimitEnabled Then
			If Round(_GetProcessUsage($g_SetCoreProcess, 0)) > $g_SetCleanLimit Then
				_ClearSingleProcess($g_SetCoreProcess)
			EndIf
		Else
			_ClearSingleProcess($g_SetCoreProcess)
		EndIf
	EndIf

	; If WinActive($g_ReBarCoreGui) Then _GetCoreProcessUsage()
	_GetCoreProcessUsage()
	_ClearExtendedProcs()

EndFunc


Func _ClearExtendedProcs()

	If $g_SetEnableExtProcs Then

		Local $sCleanProc = ""
		Local $aProcs = StringSplit($g_SetExtendedProcs, ",")
		For $x = 1 To $aProcs[0]
			$sCleanProc = StringStripCR(StringStripWS($aProcs[$x], 3))
			_ClearSingleProcess($sCleanProc)
		Next

	EndIf

EndFunc


Func _ClearSingleProcess($sProcess)

	Local $aProcessList = ProcessList($sProcess)
	If Not @error Then
		For $i = 1 To $aProcessList[0][0]
			_WinAPI_EmptyWorkingSet($aProcessList[$i][1])
		Next
	EndIf

EndFunc


Func _GetProcessUsage($sProcess, $iFlag = 0)

	Local $iProcessUsage = 0
	Local $aProcessStats = ProcessGetStats($sProcess, 0)
	If Not @error Then
		If IsArray($aProcessStats) Then
			$iProcessUsage = Round($aProcessStats[$iFlag] / 1024 / 1024, 2)
		Else
			Return SetError(2, 0, 0)
		EndIf
	Else
		Return SetError(1, 0, 0)
	EndIf

	Return $iProcessUsage

EndFunc


Func _StartCore()

	Local $trmnuClose
	;MsgBox(0, "", $g_SetLimitEnabled)

	$g_ReBarAboutTray = TrayCreateItem("About Firemin " & _GetProgramVersion())
	TrayCreateItem("")
	$g_TrayItemOptions = TrayCreateItem("Open Firemin")
	$g_TrayItemExProcs = TrayCreateItem("Extended Processes")
	TrayCreateItem("")
	$g_TrayItemBrsrRun = TrayCreateItem("Run " & $g_SetBrowserName)
	$g_TrayItemBrsrRunSafe = TrayCreateItem("Run " & $g_SetBrowserName & " in Safemode")
	TrayCreateItem("")
	$trmnuClose = TrayCreateItem("Close")

	TrayItemSetState($g_TrayItemBrsrRunSafe, $GUI_DISABLE)
	TrayItemSetState($g_TrayItemOptions, $TRAY_DEFAULT)

	TrayItemSetOnEvent($g_ReBarAboutTray, "_ShowAboutDialog")
	TrayItemSetOnEvent($g_TrayItemOptions, "_StartCoreDlg")
	TrayItemSetOnEvent($g_TrayItemExProcs, "_ExtendedProcessesDlg")
	TrayItemSetOnEvent($g_TrayItemBrsrRun, "_RunBrowser")
	TrayItemSetOnEvent($g_TrayItemBrsrRunSafe, "_RunBrowserSafe")
	TrayItemSetOnEvent($trmnuClose, "_ShutdownProgram")

	TraySetState()
	TraySetClick(8)

	If $g_SetStartBrowser Then
		If FileExists($g_SetBrowserPath) Then
			If Not ProcessExists($g_SetCoreProcess) Then
				_RunBrowser()
			EndIf
		EndIf
	EndIf

	AdlibRegister("_ReduceMemory", 350)
	AdlibRegister("_ClearProcessesWorkingSet", $g_SetBoost)

	_SetTrayItemStates()

	While 1
		Sleep(55)
	WEnd

EndFunc   ;==>_StartCoreGUI


Func _ReduceMemory()
	_WinAPI_EmptyWorkingSet(@AutoItPID)
EndFunc


Func _StartCoreDlg()

	; Local $sBrowserPath = "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
	Local $lblSlDesc

	TrayItemSetState($g_TrayItemOptions, $TRAY_DISABLE)

	$g_ReBarCoreGui = GUICreate($g_ReBarGuiTitle, $g_ReBarFormWidth, $g_ReBarFormHeight, -1, -1, -1)
	GUISetFont($g_ReBarFontSize, 400, -1, $g_ReBarFontName, $g_ReBarCoreGui, $CLEARTYPE_QUALITY)

	If Not @Compiled Then
		GUISetIcon($g_ReBarIcon, 0, $g_ReBarCoreGui)
	EndIf

	$g_ReBarGuiIcon = GUICtrlCreateIcon($g_ReBarIcon, 99, 10, 10, 64, 64)
	GUICtrlSetTip($g_ReBarGuiIcon, "Version " & $g_ReBarRunVersion & @CRLF & _
			"Build with AutoIt version " & @AutoItVersion & @CRLF & _
			"Copyright © " & @YEAR & " " & $g_ReBarCompName, _
			"About " & $g_ReBarProgName, $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_ReBarGuiIcon, 0)

	$lblSlDesc = GUICtrlCreateLabel("Start with loading the browser (select the filename). " & _
		"Firemin will automatically detect the process from the executable you select. ", 85, 10, 330, 55)
	GUICtrlSetColor($lblSlDesc, 0x555555)

	GUICtrlCreateGroup("Load Browser", 10, 85, 430, 180)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_IconProfile = GUICtrlCreateIcon($g_ReBarIcon, 0, 20, 110, 48, 48)
	$gH_IconProfile = GUICtrlGetHandle($g_IconProfile)
	$g_LblProfileTitle = GUICtrlCreateLabel(FileGetVersion($g_SetBrowserPath, $FV_PRODUCTNAME) & " " & _
		FileGetVersion($g_SetBrowserPath), 78, 115, 350, 20)
	$g_LblProfilePublisher = GUICtrlCreateLabel(FileGetVersion($g_SetBrowserPath, $FV_COMPANYNAME), 78, 135, 350, 15)
	GUICtrlSetColor($g_LblProfilePublisher, 0x555555)
	GUICtrlSetFont($g_LblProfileTitle, 10)
	$g_LblPrflPathCaption = GUICtrlCreateLabel("Executable Path:", 20, 170, 350, 18)
	GUICtrlSetColor($g_LblPrflPathCaption, 0x555555)
	$g_LblPrflPathExe = GUICtrlCreateLabel($g_SetBrowserPath, 20, 190, 350, 35)
	GUICtrlSetColor($g_LblPrflPathExe, 0x086896)
	GUICtrlSetCursor($g_LblPrflPathExe, 0)
	GUICtrlCreateLabel("Process Usage: ", 20, 225, 100, 18, $SS_RIGHT)
	GUICtrlSetColor(-1, 0x555555)

	GUICtrlSetOnEvent($g_LblPrflPathExe, "_RunBrowser")

	$g_LblProcessUsage = _GUICtrlFFLabel_Create($g_ReBarCoreGui, "0 MB", 120, 225, 100, 18, $g_ReBarFontSize, $g_ReBarFontName)
	GUICtrlCreateLabel("Process Peak: ", 20, 243, 100, 18, $SS_RIGHT)
	GUICtrlSetColor(-1, 0x555555)
	$g_LblProcessPeak = _GUICtrlFFLabel_Create($g_ReBarCoreGui, "0 MB", 120, 243, 100, 18, $g_ReBarFontSize, $g_ReBarFontName)
	$g_BtnProfileBrowse = GUICtrlCreateButton("&Browse", 320, 225, 110, 30)
	GUICtrlSetState($g_BtnProfileBrowse, $GUI_DEFBUTTON)
	; GUICtrlSetState($g_BtnProfileBrowse, $GUI_FOCUS)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	GUICtrlCreateGroup("Options", 10, 275, 430, 160)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_ChkReduceEnabled = GUICtrlCreateCheckbox(" Reduce memory every", 20, 305, 150, 20)
	$g_ComboReduceMill = GUICtrlCreateCombo("", 180, 305, 65, 20)
	GUICtrlSetData($g_ComboReduceMill, "100|200|300|400|500|600|700|800|900|1000|2000|3000|4000|5000|6000|7000|8000|9000", $g_SetBoost)
	GUICtrlCreateLabel("milliseconds", 252, 308, 100, 20)

	$g_ChkCleanLimit = GUICtrlCreateCheckbox(" Only reduce memory if usage is over", 20, 328, 240, 20)
	$g_ComboCleanLimit = GUICtrlCreateCombo("", 260, 328, 55, 20)
	GUICtrlSetData($g_ComboCleanLimit, "5|10|20|30|40|50|60|70|80|90|99|", $g_SetCleanLimit)
	GUICtrlCreateLabel("MB", 322, 331, 100, 20)
	$g_ChkBrowserAutoStart = GUICtrlCreateCheckbox(" Start " & $g_SetBrowserName & " when Firemin starts", 20, 351, 320, 20)
	$g_ChkExtendedProcs = GUICtrlCreateCheckbox(" Enable extended processes", 20, 374, 220, 20)
	$g_BtnExtendedProcs = GUICtrlCreateButton("&Extended Processes", 250, 374, 180, 30)
	$g_ChkStartWindows = GUICtrlCreateCheckbox(" Start Firemin when Windows starts", 20, 405, 320, 20)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	$g_LblSettUpdated = GUICtrlCreateLabel("Settings updated successfully.", 10, 455, 200, 20)
	GUICtrlSetColor($g_LblSettUpdated, 0x008000)
	GUICtrlSetState($g_LblSettUpdated, $GUI_HIDE)

	$g_BtnSetCancel = GUICtrlCreateButton("Cancel", 235, 450, 100, 30)
	$g_BtnSetSave = GUICtrlCreateButton("Save", 340, 450, 100, 30)
	GUICtrlSetState($g_BtnSetSave, $GUI_DISABLE)

	GUICtrlSetState($g_ChkReduceEnabled, $g_SetBoostEnabled)
	GUICtrlSetState($g_ChkCleanLimit, $g_SetLimitEnabled)
	GUICtrlSetState($g_ChkBrowserAutoStart, $g_SetStartBrowser)
	GUICtrlSetState($g_ChkExtendedProcs, $g_SetEnableExtProcs)
	GUICtrlSetState($g_ChkStartWindows, FileExists(@StartupDir & "\Firemin.lnk"))

	GUICtrlSetOnEvent($g_ReBarGuiIcon, "_ShowAboutDialog")
	GUICtrlSetOnEvent($g_BtnProfileBrowse, "_FindBrowser")

	GUICtrlSetOnEvent($g_ChkReduceEnabled, "_SetBoost")
	GUICtrlSetOnEvent($g_ComboReduceMill, "_SetBoost")
	GUICtrlSetOnEvent($g_ChkCleanLimit, "_SetCleanLimit")
	GUICtrlSetOnEvent($g_ComboCleanLimit, "_SetCleanLimit")
	GUICtrlSetOnEvent($g_ChkExtendedProcs, "_SetExtendedProcsEnabled")
	GUICtrlSetOnEvent($g_ChkBrowserAutoStart, "_EnableSaveSettings")
	GUICtrlSetOnEvent($g_ChkStartWindows, "_EnableSaveSettings")
	GUICtrlSetOnEvent($g_BtnExtendedProcs, "_ExtendedProcessesDlg")

	GUICtrlSetOnEvent($g_BtnSetCancel, "_CloseCoreDlg")
	GUICtrlSetOnEvent($g_BtnSetSave, "_SaveSettings")

	_LoadBrowser($g_SetBrowserPath)
	_SetControlStates()

	GUISetState(@SW_SHOW, $g_ReBarCoreGui)
	GUISetOnEvent($GUI_EVENT_CLOSE, "_CloseCoreDlg", $g_ReBarCoreGui)

	AdlibRegister("_GetCoreProcessPeak", 5000)
	AdlibRegister("_OnMainIconHover", 50)

	GUICtrlSetState($g_ChkStartWindows, FileExists(@StartupDir & "\Firemin.lnk"))

	_GetCoreProcessUsage()
	_GetCoreProcessPeak()
	_SoftwareUpdateCheck()

EndFunc


Func _SetBoost()

	If GUICtrlRead($g_ChkReduceEnabled) = $GUI_CHECKED Then
		$g_SetBoostEnabled = 1
	Else
		$g_SetBoostEnabled = 0
		GUICtrlSetColor($g_LblProcessUsage, 0x000000)
	EndIf

	$g_SetBoost = Int(GUICtrlRead($g_ComboReduceMill))
	AdlibRegister("_ClearProcessesWorkingSet", $g_SetBoost)
	_ClearProcessesWorkingSet()
	_EnableSaveSettings()
	_SetControlStates()

EndFunc


Func _SetCleanLimit()

	If GUICtrlRead($g_ChkCleanLimit) = $GUI_CHECKED Then
		$g_SetLimitEnabled = 1
	Else
		$g_SetLimitEnabled = 0
	EndIf

	$g_SetCleanLimit = Int(GUICtrlRead($g_ComboCleanLimit))
	_ClearProcessesWorkingSet()
	_EnableSaveSettings()
	_SetControlStates()

EndFunc


Func _SetExtendedProcsEnabled()

	If GUICtrlRead($g_ChkExtendedProcs) = $GUI_CHECKED Then
		$g_SetEnableExtProcs = 1
	Else
		$g_SetEnableExtProcs = 0
	EndIf
	_EnableSaveSettings()

EndFunc


Func _CloseCoreDlg()

	GUIDelete($g_ReBarCoreGui)
	TrayItemSetState($g_TrayItemOptions, $TRAY_ENABLE)

	_LoadSettings()
	_SetTrayItemStates()

	AdlibUnRegister("_OnMainIconHover")

EndFunc


Func _ExtendedProcessesDlg()

	TrayItemSetState($g_TrayItemExProcs, $TRAY_DISABLE)
	GUICtrlSetState($g_BtnExtendedProcs, $TRAY_DISABLE)

	$g_ExtProcsDlg = GUICreate("Extended Processes", $g_ReBarFormWidth, $g_ReBarFormHeight - 200, -1, -1, -1)
	GUISetFont($g_ReBarFontSize, 400, -1, $g_ReBarFontName, $g_ExtProcsDlg, $CLEARTYPE_QUALITY)
	GUISetIcon($g_ReBarResFugue, 131, $g_ReBarAboutGui)
	GUISetIcon($g_ReBarResDoors, -110, $g_ExtProcsDlg)

	GUICtrlCreateLabel("Enter here the names of any additional processes you would like Fireman to optimize. " & _
		"The list must be comma separated (Process01.exe, Process02.exe, etc)", 20, 20, $g_ReBarFormWidth - 40, 60)
	GUICtrlSetColor(-1, 0x555555)

	$g_EditExtProcs = GUICtrlCreateEdit("", 20, 80, $g_ReBarFormWidth - 40, 150, $WS_VSCROLL + $ES_AUTOVSCROLL)
	GUICtrlSetData($g_EditExtProcs, IniRead($g_ReBarPathIni, $g_ReBarShortName, "ExtendedProcs", "plugin-container.exe"))
	GUICtrlSetState($g_BtnExtProcsSave, $GUI_NOFOCUS)

	$g_LblExtProcsUpdated =  GUICtrlCreateLabel("Settings updated successfully.", 20, 240, 200, 20)
	GUICtrlSetColor($g_LblExtProcsUpdated, 0x008000)
	GUICtrlSetState($g_LblExtProcsUpdated, $GUI_HIDE)

	$g_BtnExtProcsSave = GUICtrlCreateButton("Save", 330, 235, 100, 30)
	GUICtrlSetState($g_BtnExtProcsSave, $GUI_DEFBUTTON)
	GUICtrlSetOnEvent($g_BtnExtProcsSave, "_SaveExtendedProcs")

	GUISetState(@SW_SHOW, $g_ExtProcsDlg)

	Local $iSelLen = StringLen(GUICtrlRead($g_EditExtProcs))
	_GUICtrlEdit_SetSel($g_EditExtProcs, $iSelLen, $iSelLen)

	GUISetOnEvent($GUI_EVENT_CLOSE, "_CloseExtProcsDlg", $g_ExtProcsDlg)

EndFunc


Func _SaveExtendedProcs()
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "ExtendedProcs", GUICtrlRead($g_EditExtProcs))
	GUICtrlSetState($g_LblExtProcsUpdated, $GUI_SHOW)
EndFunc


Func _CloseExtProcsDlg()

	TrayItemSetState($g_TrayItemExProcs, $TRAY_ENABLE)
	GUICtrlSetState($g_BtnExtendedProcs, $TRAY_ENABLE)

	GUIDelete($g_ExtProcsDlg)

EndFunc


Func _RunBrowser()
	ShellExecute($g_SetBrowserPath)
EndFunc


Func _RunBrowserSafe()
	ShellExecute($g_SetBrowserPath, _ReturnSafeModeCommand(), $g_SetBrowserPath)
EndFunc


Func _ReturnSafeModeCommand()

	Local $sParameters = ""
	Local $aSafeMode = IniReadSection($g_ReBarPathIni, "Safemode")
    If Not @error Then
        For $s = 1 To $aSafeMode[0][0]
			If $aSafeMode[$s][0] = $g_SetCoreProcess Then
				Return $aSafeMode[$s][1]
			EndIf
        Next
    EndIf

	Return SetError(1, 0, "")

EndFunc


Func _SetControlStates()

	If GUICtrlRead($g_ChkReduceEnabled) = $GUI_CHECKED Then

		GUICtrlSetState($g_ComboReduceMill, $GUI_ENABLE)
		GUICtrlSetState($g_ChkCleanLimit, $GUI_ENABLE)
		GUICtrlSetState($g_ChkExtendedProcs, $GUI_ENABLE)

		If GUICtrlRead($g_ChkCleanLimit) = $GUI_CHECKED Then
			GUICtrlSetState($g_ComboCleanLimit, $GUI_ENABLE)
		Else
			GUICtrlSetState($g_ComboCleanLimit, $GUI_DISABLE)
		EndIf

	Else

		GUICtrlSetState($g_ComboReduceMill, $GUI_DISABLE)
		GUICtrlSetState($g_ChkCleanLimit, $GUI_DISABLE)
		GUICtrlSetState($g_ChkExtendedProcs, $GUI_DISABLE)
		GUICtrlSetState($g_ComboCleanLimit, $GUI_DISABLE)

	EndIf

EndFunc


Func _SetTrayItemStates()

	TrayItemSetText($g_TrayItemBrsrRun, "Run " & $g_SetBrowserName)
	TrayItemSetText($g_TrayItemBrsrRunSafe, "Run " & $g_SetBrowserName & " in Safemode")

	If _ReturnSafeModeCommand() == "" Then
		TrayItemSetState($g_TrayItemBrsrRunSafe, $GUI_DISABLE)
	Else
		TrayItemSetState($g_TrayItemBrsrRunSafe, $GUI_ENABLE)
	EndIf

EndFunc


Func _FindBrowser()

	Local $sBrowserOpenDlg = FileOpenDialog("Select Browser", _WinAPI_PathRemoveFileSpec($g_SetBrowserPath), _
		"Browser (*.exe)", $FD_FILEMUSTEXIST)
	If Not @error Then
		If $sBrowserOpenDlg <> $g_SetBrowserPath Then
			GUICtrlSetState($g_BtnSetSave, $GUI_ENABLE)
		EndIf
        _LoadBrowser($sBrowserOpenDlg)
		_ResetProcessUsage()
		_SetTrayItemStates()
    EndIf

EndFunc


Func _LoadBrowser($sBrowserPath)

	If FileExists($sBrowserPath) Then

		$g_SetBrowserPath = $sBrowserPath
		$g_SetCoreProcess = _WinAPI_PathStripPath($g_SetBrowserPath)
		$g_SetBrowserName = FileGetVersion($g_SetBrowserPath, $FV_PRODUCTNAME)

		GUICtrlSetData($g_LblPrflPathCaption, "Executable Path (" & $g_SetCoreProcess & "):")
		GUICtrlSetData($g_LblProfileTitle, $g_SetBrowserName & " " & FileGetVersion($g_SetBrowserPath))
		GUICtrlSetData($g_LblProfilePublisher, FileGetVersion($g_SetBrowserPath, $FV_COMPANYNAME))
		GUICtrlSetData($g_LblPrflPathExe, $g_SetBrowserPath)

		_WinAPI_DestroyIcon(_SendMessage($gH_IconProfile, $STM_SETIMAGE, 1, _WinAPI_ShellExtractIcon($g_SetBrowserPath, 0, 48, 48)))
		;Local $hIcon = _WinAPI_ShellExtractIcon($g_SetBrowserPath, 0, 48, 48)
		;_Icons_SetHIcon($g_IconProfile, $hIcon)

	Else

		; GUICtrlSetImage($g_IconProfile, $g_ReBarIcon, -1)
		_WinAPI_DestroyIcon(_SendMessage($gH_IconProfile, $STM_SETIMAGE, 1, _WinAPI_ShellExtractIcon($g_ReBarIcon, 0, 48, 48)))
		$sBrowserPath = "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
		;_LoadBrowser($sBrowserPath)
		IniWrite($g_ReBarPathIni, $g_ReBarShortName, "BrowserPath", $sBrowserPath)

	EndIf

EndFunc


Func _GetCoreProcessUsage()

	If ProcessExists($g_SetCoreProcess) Then

		$g_CoreProcessUsage = _GetProcessUsage($g_SetCoreProcess, 0)
		_GUICtrlFFLabel_SetData($g_LblProcessUsage, $g_CoreProcessUsage & " MB")

		If $g_SetBoostEnabled Then

			If $g_SetLimitEnabled Then
				If $g_CoreProcessUsage > $g_SetCleanLimit Then
					_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFFFF0000)
				Else
					_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFF000000)
				EndIf
			Else
				_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFF000000)
			EndIf

		Else

			If $g_CoreProcessUsage > 300 Then
				_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFFFF0000)
			Else
				_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFF000000)
			EndIf

		EndIf

	EndIf

EndFunc


Func _GetCoreProcessPeak()

	If ProcessExists($g_SetCoreProcess) Then
		$g_CoreProcessPeak = _GetProcessUsage($g_SetCoreProcess, 1)
		_GUICtrlFFLabel_SetData($g_LblProcessPeak, $g_CoreProcessPeak & " MB")
	Else
		_ResetProcessUsage()
	EndIf

EndFunc


Func _ResetProcessUsage()
	_GUICtrlFFLabel_SetData($g_LblProcessUsage, "0 MB")
	_GUICtrlFFLabel_SetData($g_LblProcessPeak, "0 MB")
	_GUICtrlFFLabel_SetTextColor($g_LblProcessUsage, 0xFF000000)
EndFunc


Func _EnableSaveSettings()
	GUICtrlSetState($g_BtnSetSave, $GUI_ENABLE)
	GUICtrlSetState($g_LblSettUpdated, $GUI_HIDE)
EndFunc


Func _SaveSettings()

	If GUICtrlRead($g_ChkBrowserAutoStart) = $GUI_CHECKED Then
		$g_SetStartBrowser = 1
	Else
		$g_SetStartBrowser  = 0
	EndIf

	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "BrowserPath", $g_SetBrowserPath)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "BoostEnabled", $g_SetBoostEnabled)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "Boost", $g_SetBoost)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "LimitEnabled", $g_SetLimitEnabled)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "ReduceLimit", $g_SetCleanLimit)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "StartBrowser", $g_SetStartBrowser)
	IniWrite($g_ReBarPathIni, $g_ReBarShortName, "EnableExtendedProcs", $g_SetEnableExtProcs)

	If GUICtrlRead($g_ChkStartWindows) = $GUI_CHECKED Then
		FileDelete(@StartupDir & "\Firemin.lnk")
		FileCreateShortcut(@ScriptFullPath, @StartupDir & "\Firemin.lnk", @StartupDir)
	Else
		FileDelete(@StartupDir & "\Firemin.lnk")
	EndIf

	GUICtrlSetState($g_BtnSetSave, $GUI_DISABLE)
	GUICtrlSetState($g_LblSettUpdated, $GUI_SHOW)

EndFunc


Func _OnMainIconHover()

	Local $iCursor = GUIGetCursorInfo()

	If Not @error Then
		If $iCursor[4] = $g_ReBarGuiIcon And $g_ReBarIcoHovering = 1 Then
			$g_ReBarIcoHovering = 0
			GUICtrlSetImage($g_ReBarGuiIcon, $g_ReBarIconHover, 201)
		ElseIf $iCursor[4] <> $g_ReBarGuiIcon And $g_ReBarIcoHovering = 0 Then
			$g_ReBarIcoHovering = 1
			GUICtrlSetImage($g_ReBarGuiIcon, $g_ReBarIcon, 99)
		EndIf
	EndIf

EndFunc   ;==>_OnMainIconHover


Func _OnCoreClosing()

	AdlibUnRegister("_ReduceMemory")
	AdlibUnRegister("_ClearExtendedProcs")
	AdlibUnRegister("_ClearProcessesWorkingSet")

EndFunc

#include "Includes\ReBar_End.au3"
