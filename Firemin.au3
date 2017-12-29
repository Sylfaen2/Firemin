#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Section

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
#AutoIt3Wrapper_Res_Description=AutoIt Application Framework      	;~ Description field
#AutoIt3Wrapper_Res_Fileversion=6.0.0.4836
#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
#AutoIt3Wrapper_Res_HiDpi=N                      					;~ (Y/N) Compile for high DPI. Default=N
#AutoIt3Wrapper_Res_ProductVersion=5             					;~ Product Version
#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
#AutoIt3Wrapper_Res_LegalCopyright=© 2018 Rizonesoft				;~ Copyright field
#AutoIt3Wrapper_res_requestedExecutionLevel=asInvoker				;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81				;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
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
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\FireminH.ico					; 201

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Information.ico		; 202
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Complete.ico			; 203
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Cross.ico			 	; 204
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Exclamation.ico		; 205
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Smiley-Glass.ico		; 206
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Skull.ico				; 207
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Snowman.ico			; 208

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Update.ico					; 209
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Error.ico						; 210

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Check.ico				; 211
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Error.ico				; 212
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Gear.ico				; 213
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Information.ico		; 214
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Love.ico				; 215

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPal.ico				; 216
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPalH.ico				; 217
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\sa.ico					; 218
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\saH.ico					; 219
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Facebook.ico			; 220
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\FacebookH.ico			; 221
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Twitter.ico				; 222
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\TwitterH.ico			; 223
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlus.ico			; 224
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlusH.ico			; 225
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHub.ico				; 226
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHubH.ico				; 227

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\en.ico					; 228
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\af.ico					; 229
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ar.ico					; 230
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\bg.ico					; 231
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\cs.ico					; 232
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\da.ico					; 233
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\de.ico					; 234
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\el.ico					; 235
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\es.ico					; 236
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\fr.ico					; 237
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hi.ico					; 238
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hr.ico					; 239
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\id.ico					; 240
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\is.ico					; 241
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\it.ico					; 242
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\iw.ico					; 243
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ja.ico					; 244
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ko.ico					; 245
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\nl.ico					; 246
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\no.ico					; 247
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pl.ico					; 248
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pt.ico					; 249
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ro.ico					; 250
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ru.ico					; 251
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sk.ico					; 252
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sv.ico					; 253
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\th.ico					; 254
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\tr.ico					; 255
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\vi.ico					; 256
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\zh-CN.ico				; 257

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Gear.ico				; 258
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Logbook.ico				; 259
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Close.ico				; 260
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Update.ico				; 261
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Home.ico				; 262
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Mail.ico				; 263
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\GitHub.ico				; 264
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\About.ico				; 265

;===============================================================================================================
; Tidy Settings
;===============================================================================================================
;#AutoIt3Wrapper_Run_Tidy=N										;~ (Y/N) Run Tidy before compilation. Default=N
;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
;===============================================================================================================
; Au3Stripper Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Au3Stripper=N								;~ (Y/N) Run Au3Stripper before compilation. default=N
;#Au3Stripper_Parameters=MergeOnly								;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
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

#EndRegion AutoIt3Wrapper Directives Section


Opt("CaretCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("ExpandEnvStrings", 1)			;~ 0=don't expand, 1=do expand
Opt("ExpandVarStrings", 1)			;~ 0=don't expand, 1=do expand
; Opt("GUICloseOnESC", 0)				;~ 1=ESC  closes, 0=ESC won't close
Opt("GUICoordMode", 1)				;~ 1=absolute, 0=relative, 2=cell
Opt("GUIDataSeparatorChar", "|")	;~ "|" is the default
Opt("GUIOnEventMode", 1)			;~ 0=disabled, 1=OnEvent mode enabled
Opt("GUIResizeMode", 802)			;~ 0=no resizing, <1024 special resizing
Opt("GUIEventOptions", 0)			;~ 0=default, 1=just notification, 2=GUICtrlRead tab index
Opt("MouseClickDelay", 10)			;~ 10 milliseconds
Opt("MouseClickDownDelay", 10)		;~ 10 milliseconds
Opt("MouseClickDragDelay", 250)		;~ 250 milliseconds
Opt("MouseCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("MustDeclareVars", 1)			;~ 0=no, 1=require pre-declaration
Opt("PixelCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("SendAttachMode", 0)			;~ 0=don't attach, 1=do attach
Opt("SendCapslockMode", 1)			;~ 1=store and restore, 0=don't
Opt("SendKeyDelay", 5)				;~ 5 milliseconds
Opt("SendKeyDownDelay", 1)			;~ 1 millisecond
Opt("TCPTimeout", 100)				;~ 100 milliseconds
Opt("TrayAutoPause", 1)				;~ 0=no pause, 1=Pause
Opt("TrayIconDebug", 1)				;~ 0=no info, 1=debug line info
Opt("TrayIconHide", 1)				;~ 0=show, 1=hide tray icon
Opt("TrayMenuMode", 3)				;~ 0=append, 1=no default menu, 2=no automatic check, 4=menuitemID  not return
Opt("TrayOnEventMode", 1)			;~ 0=disable, 1=enable
Opt("WinDetectHiddenText", 0)		;~ 0=don't detect, 1=do detect
Opt("WinSearchChildren", 1)			;~ 0=no, 1=search children also
Opt("WinTextMatchMode", 1)			;~ 1=complete, 2=quick
Opt("WinTitleMatchMode", 4)			;~ 1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
Opt("WinWaitDelay", 250)			;~ 250 milliseconds


Func _ReBarStartUp()
EndFunc   ;==>_ReBarStartUp


#include <GuiConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <GuiStatusBar.au3>
#include <WinAPIProc.au3>
#include <WinAPITheme.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>

#include "..\..\Includes\About.au3"
#include "..\..\Includes\Donate.au3"
#include "..\..\Includes\GUICtrlFFLabel.au3"
#include "..\..\Includes\GuiMenuEx.au3"
#include "..\..\Includes\ImageListEx.au3"
#include "..\..\Includes\Link.au3"
#include "..\..\Includes\StringEx.au3"
#include "..\..\Includes\Update.au3"
#include "..\..\Includes\Versioning.au3"

#include "UDF\Localization.au3"


;~ Constants
Global Const $CNT_MENUICONS		= 8
Global Const $CNT_LOGICONS		= 7

;~ General Settings
Global $g_sCompanyName			= "Rizonesoft"
Global $g_sProgShortName		= "Firemin"
Global $g_sProgShortName_X64	= $g_sProgShortName & "_X64"
Global $g_sProgName				= "Firemin"
Global $g_iSingleton			= False

;~ Links
Global $g_sUrlCompHomePage		= "https://goo.gl/m4Bhqe|www.rizonesoft.com"							; https://www.rizonesoft.com
Global $g_sUrlContact			= "https://goo.gl/X1kR2a|www.rizonesoft.com/contact"					; https://www.rizonesoft.com/contact
Global $g_sUrlDownloads			= "https://goo.gl/BWhZ4G|www.rizonesoft.com/downloads"					; https://www.rizonesoft.com/downloads/
Global $g_sUrlFacebook			= "https://goo.gl/o1wRdC|Facebook.com/rizonesoft"						; https://www.facebook.com/rizonesoft
Global $g_sUrlTwitter			= "https://goo.gl/Rcc5Wz|Twitter.com/Rizonesoft"						; https://twitter.com/Rizonesoft
Global $g_sUrlGooglePlus		= "https://goo.gl/oNirJT|Plus.google.com/+Rizonesoftsa" 				; https://plus.google.com/+Rizonesoftsa/posts
Global $g_sUrlRSS				= "https://goo.gl/s1kUi4|www.rizonesoft.com/feed"						; https://www.rizonesoft.com/feed
Global $g_sUrlPayPal			= "https://goo.gl/WkkaUm|PayPal.me/rizonesoft"							; https://www.paypal.me/rizonesoft
Global $g_sUrlGitHub			= "https://goo.gl/rj1M7a|GitHub.com/rizonesoft/Firemin"					; https://github.com/rizonesoft/SDK
Global $g_sUrlGitHubIssues		= "https://goo.gl/6tkoh8|GitHub.com/rizonesoft/Firemin/issues"			; https://github.com/rizonesoft/SDK/issues
Global $g_sUrlSA				= "https://goo.gl/Fn6UKQ|Wikipedia.org/wiki/South_Africa"				; https://en.wikipedia.org/wiki/South_Africa
Global $g_sUrlProgPage			= "https://goo.gl/EL99cQ|www.rizonesoft.com/downloads/firemin/"			; https://www.rizonesoft.com/downloads/firemin/


;~ Path Settings
Global $g_sWorkingDir		= @ScriptDir ;~ Working Directory
Global $g_sRootDir			= @ScriptDir ;~ Root Directory
Global $g_sPathIni			= $g_sWorkingDir & "\" & $g_sProgShortName & ".ini" ;~ Full Path to the Configuaration file
Global $g_sAppDataRoot		= @AppDataDir & "\" & $g_sCompanyName & "\" & $g_sProgShortName
Global $g_sThemesDir		= $g_sRootDir & "\Themes" ;~ Themes Directory
Global $g_sDocsDir			= $g_sRootDir & "\Documents\" & $g_sProgShortName ;~ Documentation Directory
Global $g_sDocHelpFile		= $g_sDocsDir & "\" & $g_sProgShortName & ".chm"
Global $g_sDocChanges		= $g_sDocsDir & "\Changes.txt"
Global $g_sDocLicense		= $g_sDocsDir & "\License.txt"
Global $g_sDocReadme		= $g_sDocsDir & "\Readme.txt"

; Configuration Settings
Global $g_iClearCacheOnExit = 0
Global $g_iBoostMill		= 500
Global $g_iCleanLimit		= 5
Global $g_sBrowserName
Global $g_sBrowserPath		= @ProgramFilesDir & "\Mozilla Firefox\firefox.exe"
Global $g_sExtendedProcs	= "plugin-container.exe"
Global $g_sCoreProcess
Global $g_iCoreProcessUsage	= 0
Global $g_iCoreProcessPeak	= 0
Global $g_iBoostEnabled		= 1
Global $g_iLimitEnabled		= 1
Global $g_iStartBrowser		= 0
Global $g_iExtProcsEnabled	= 1


;~ Language Settings
Global $g_sLanguageDir		= $g_sRootDir & "\Language\" & $g_sProgShortName
Global $g_sSelectedLanguage = IniRead($g_sPathIni, $g_sProgShortName, "Language", "en")
Global $g_tSelectedLanguage = $g_sSelectedLanguage
Global $g_sLanguageFile		= $g_sLanguageDir & "\" & $g_sSelectedLanguage & ".ini"

;~ Resources
Global $g_iUpdateIconStart				= 209
Global $g_iDialogIconStart				= 211
Global $g_iAboutIconStart				= 216
Global $g_iMenuIconsStart				= 258
Global $g_iLangIconStart				= 228
Global $g_aCoreIcons[3]
Global $g_iSizeIcon						= 64
Global $g_aLognIcons[$CNT_LOGICONS]
Global $g_aMenuIcons[$CNT_MENUICONS]
Global $g_sDlgOptionsIcon

;~ Logging Settings
Global $g_GuiLogBoxHeight	= 150
Global $g_iLogIconStart		= -202
Global $g_iUpdateSubStatus	= True

;~ Cache Settings
Global $g_sCacheRoot		= $g_sWorkingDir & "\Cache\" & $g_sProgShortName
Global $g_iEnableCache		= 1

;~ Splash Page Settings
Global $g_SplashAnimation 	= $g_sThemesDir & "\Processing\32\Stroke.ani"
Global $g_iSplashDelay		= 100

;~ Update Notification Settings
Global $g_sUpdateAnimation	= $g_sThemesDir & "\Processing\" & $g_iSizeIcon & "\Globe.ani"
Global $g_sRemoteUpdateFile	= "https://www.rizonesoft.com/update/" & $g_sProgShortName & ".ru"
Global $g_iCheckForUpdates	= 4

;~ Donate Time
Global $g_iUptimeMonitor	= 0
Global $g_iDonateTime		= 0
Global $g_iDonateTimeSet	= 259200 ; 10800 = 3 Hours | 86400 = Day | 259200 = 3 Days (Default) | 432000 = 5 Days

;~ Title Settings
Global $g_TitleShowAdmin	= True	;~ Show whether program is running as Administrator
Global $g_TitleShowArch		= True	;~ Show program architecture
Global $g_TitleShowVersion	= True	;~ Show program version
Global $g_TitleShowBuild	= True	;~ Show program build
Global $g_TitleShowAutoIt	= True	;~ Show AutoIt version

;~ Interface Settings
Global $g_iCoreGuiWidth		= 450
Global $g_iCoreGuiHeight	= 535
Global $g_iMsgBoxTimeOut	= 60

;~ About Dialog
Global $g_sAboutCredits		= "Derick Payne (Rizonesoft), Brian J Christy (Beege), " & _
							"G Sandler (MrCreatoR), Holger Kotsch, KaFu, LarsJ, nickston, ProgAndy, Yashied"
Global $g_sProgramTitle 	= _GUIGetTitle($g_sProgName)	;~ Get Program Ttile, including version.
Global $g_hCoreGui										;~ Main GUI
Global $g_hGuiIcon										;~ Main Icon
Global $g_AniUpdate
Global $g_hMenuFile
Global $g_hMenuHelp, $g_hUpdateMenuItem
Global $g_OldSystemParam								;~ Used when resizing the main GUI
Global $g_hSubHeading
Global $g_IconProfile
Global $g_hIconProfile
Global $g_hLblPrflTitle
Global $g_hLblPrflPublisher
Global $g_hLblPrflPathCaption
Global $g_hLblPrflPathExe
Global $g_hLblProcessUsage
Global $g_hLblProcessPeak
Global $g_hBtnPrflBrowse
Global $g_hChkReduceEnabled
Global $g_hComboReduceMill
Global $g_hChkCleanLimit
Global $g_hComboCleanLimit
Global $g_hChkBrowserAutoStart
Global $g_hChkExtendedProcs
Global $g_hBtnExtendedProcs
Global $g_hChkStartWindows
Global $g_hLblUpdated
Global $g_hLblTimeStatus
Global $g_hBtnSave
Global $g_hBtnCancel

;~ Tray menu items
Global $g_hTrItemAbout
Global $g_hTrItemOpenCore
Global $g_hTrItemExProcs
Global $g_hTrItemBrsrRun
Global $g_hTrItemBrsrRunSafe

If Not IsDeclared("g_iParentState") Then Global $g_iParentState
If Not IsDeclared("g_iParent") Then Global $g_iParent

Global $g_hOptionsGui
Global $g_hOEditExtProcs
Global $g_hOEditExtProcsTemp 		= ""
Global $g_hOChkClearCacheOnExit
Global $g_hOLblCacheSize
Global $g_hOBtnClearCache
Global $g_hOListLanguage
Global $g_hOImgLanguage
Global $g_hOIconLanguage
Global $g_hOLblLanguage
Global $g_hOLblPrefsUpdated
Global $g_hOBtnSave
Global $g_hOBtnCancel


_Localization_Messages()   		;~ Load Message Language Strings
If _Singleton($g_sProgramTitle, 1) = 0 And $g_iSingleton = True Then
	MsgBox($MB_SYSTEMMODAL + $MB_ICONINFORMATION, $g_aLangMessages[3], $g_aLangMessages[4], $g_iMsgBoxTimeOut)
	Exit
EndIf


If @OSVersion = "WIN_2000" Or @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_2003" Then
	Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONERROR + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[5], _
				_Link_Split($g_sUrlContact, 2)), $g_iMsgBoxTimeOut)
	Switch $iMsgBoxResult
		Case $IDYES
			ShellExecute(_Link_Split($g_sUrlContact))
			_TerminateProgram()
		Case -1, $IDNO
			_TerminateProgram()
	EndSwitch
Else

	If Not @AutoItX64 And @OSArch = "X64" Then

		Local $s64BitExePath = @ScriptDir & "\" & $g_sProgShortName_X64 & ".exe"

		If FileExists($s64BitExePath) Then
			ShellExecute($s64BitExePath)
			_TerminateProgram()
		Else

			Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONWARNING + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[6], _
					_Link_Split($g_sUrlDownloads, 2)), $g_iMsgBoxTimeOut)

			Switch $iMsgBoxResult
				Case $IDYES
					ShellExecute(_Link_Split($g_sUrlDownloads))
					_TerminateProgram()
				Case -1, $IDNO
					_TerminateProgram()
			EndSwitch

		EndIf

	Else

		_Localization_Menus()		;~ Load Menu Language Strings
		_Localization_Custom()		;~ Load Custom Language Strings
		_Localization_About()		;~ Load About Language Strings
		_SetResources()
		_SetWorkingDirectories()
		_LoadConfiguration()
		_SetHotKeys()
		_StartCore()

	EndIf

EndIf


Func _SetHotKeys()
	HotKeySet("+!{F4}", "_ShutdownProgram")
EndFunc


Func _StartCore()

	Local $trmnuClose

	$g_hTrItemAbout = TrayCreateItem(StringFormat($g_aLangMenus[11], _GetProgramVersion()))
	TrayCreateItem("")
	$g_hTrItemOpenCore = TrayCreateItem($g_aLangMenus[12])
	$g_hTrItemExProcs = TrayCreateItem($g_aLangMenus[13])
	TrayCreateItem("")
	$g_hTrItemBrsrRun = TrayCreateItem(StringFormat($g_aLangMenus[14], $g_sBrowserName))
	$g_hTrItemBrsrRunSafe = TrayCreateItem(StringFormat($g_aLangMenus[15], $g_sBrowserName))
	TrayCreateItem("")
	$trmnuClose = TrayCreateItem($g_aLangMenus[2])

	TrayItemSetState($g_hTrItemBrsrRunSafe, $GUI_DISABLE)
	TrayItemSetState($g_hTrItemOpenCore, $TRAY_DEFAULT)

	TrayItemSetOnEvent($g_hTrItemAbout, "_About_ShowDialog")
	TrayItemSetOnEvent($g_hTrItemOpenCore, "_StartCoreGui")
	TrayItemSetOnEvent($g_hTrItemExProcs, "_ShowPreferencesDlg")
	TrayItemSetOnEvent($g_hTrItemBrsrRun, "_RunBrowser")
	TrayItemSetOnEvent($g_hTrItemBrsrRunSafe, "_RunBrowserSafe")
	TrayItemSetOnEvent($trmnuClose, "_ShutdownProgram")

	TraySetState()
	TraySetClick(8)

	If $g_iStartBrowser Then
		_RunBrowser()
	EndIf

	AdlibRegister("_UptimeMonitor", 1000)
	AdlibRegister("_ReduceMemory", 300)
	AdlibRegister("_ClearProcessesWorkingSet", $g_iBoostMill)

	_SetTrayItemStates()

	If Int(IniRead($g_sPathIni, $g_sProgShortName, "FirstRun", 1)) = 1 Then
		IniWrite($g_sPathIni, $g_sProgShortName, "FirstRun", 0)
		_StartCoreGui()
	EndIf

	If $g_iCheckForUpdates == 4 Then
		_SoftwareUpdateCheck()
    EndIf

	While 1
		Sleep(55)
	WEnd

EndFunc   ;==>_StartCoreGUI


Func _StartCoreGui()

	Local $miFileOptions, $miFileClose
	Local $miHelpHome, $miHelpDownloads, $miHelpContact, $miHelpGitHub, $miHelpDonate, $miHelpAbout
	Local $hHeading

	TrayItemSetState($g_hTrItemOpenCore, $GUI_DISABLE)

	$g_hCoreGui = GUICreate($g_sProgramTitle, $g_iCoreGuiWidth, $g_iCoreGuiHeight, -1, 25)
	If Not @Compiled Then GUISetIcon($g_aCoreIcons[0])
	GUISetFont(8.5, 400, -1, "Verdana", $g_hCoreGui, $CLEARTYPE_QUALITY)
	GUISetOnEvent($GUI_EVENT_CLOSE, "_CloseCoreGui", $g_hCoreGui)

	GUIRegisterMsg($WM_GETMINMAXINFO, "WM_GETMINMAXINFO")
	GUIRegisterMsg($WM_EXITSIZEMOVE, "WM_EXITSIZEMOVE")
	GUIRegisterMsg($WM_SYSCOMMAND, "WM_SYSCOMMAND")

	$g_hMenuFile = GUICtrlCreateMenu($g_aLangMenus[0])
	$g_hMenuHelp = GUICtrlCreateMenu($g_aLangMenus[3])

	_GuiCtrlMenuEx_SetMenuIconBkColor(0xF0F0F0)
	_GuiCtrlMenuEx_SetMenuIconBkGrdColor(0xFFFFFF)

	$miFileOptions = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[1], $g_hMenuFile, $g_aMenuIcons[0], $g_iMenuIconsStart)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuFile)
	$miFileClose = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[2], $g_hMenuFile, $g_aMenuIcons[2], $g_iMenuIconsStart + 2)

	$g_hUpdateMenuItem = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[4], $g_hMenuHelp, $g_aMenuIcons[3], $g_iMenuIconsStart + 3)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpHome = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[5], $g_hMenuHelp, $g_aMenuIcons[4], $g_iMenuIconsStart + 4)
	$miHelpDownloads = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[6], $g_hMenuHelp)
	$miHelpContact = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[7], $g_hMenuHelp, $g_aMenuIcons[5], $g_iMenuIconsStart + 5)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpGitHub = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[8], $g_hMenuHelp, $g_aMenuIcons[6], $g_iMenuIconsStart + 6)
	$miHelpDonate = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[9], $g_hMenuHelp)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpAbout = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[10], $g_hMenuHelp, $g_aMenuIcons[7], $g_iMenuIconsStart + 7)
	GUICtrlSetOnEvent($miFileOptions, "_ShowPreferencesDlg")
	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")

	GUICtrlSetOnEvent($g_hUpdateMenuItem, "_CheckForUpdates")
	GUICtrlSetOnEvent($miHelpHome, "_About_HomePage")
	GUICtrlSetOnEvent($miHelpDownloads, "_About_Downloads")
	GUICtrlSetOnEvent($miHelpContact, "_About_Contact")
	GUICtrlSetOnEvent($miHelpGitHub, "_About_GitHubIssues")
	GUICtrlSetOnEvent($miHelpDonate, "_About_PayPal")
	GUICtrlSetOnEvent($miHelpAbout, "_About_ShowDialog")

	$g_hGuiIcon = GUICtrlCreateIcon($g_aCoreIcons[0], 99, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetTip($g_hGuiIcon, $g_aLangAbout[1] & Chr(32) & _GetProgramVersion(0) & @CRLF & _
			$g_aLangAbout[2] & Chr(32) & @AutoItVersion & @CRLF & _
			$g_aLangAbout[3] & " © " & @YEAR & " " & $g_sCompanyName, _
			$g_aLangAbout[0], $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_hGuiIcon, 0)
	GUICtrlSetOnEvent($g_hGuiIcon, "_About_ShowDialog")
	$g_AniUpdate = GUICtrlCreateIcon($g_sUpdateAnimation, 0, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
	$hHeading = GUICtrlCreateLabel($g_sProgName & " " & _GetProgramVersion(1), $g_iSizeIcon + 22, 15, 300, 35)
	GUICtrlSetFont($hHeading, 12)
	$g_hSubHeading = GUICtrlCreateLabel($g_aLangCustom[0], $g_iSizeIcon + 22, 38, _
		$g_iCoreGuiWidth - $g_iSizeIcon - 42, 50)
	GUICtrlSetFont($g_hSubHeading, 9)
	GUICtrlSetColor($g_hSubHeading, 0x353535)

	GUICtrlCreateGroup($g_aLangCustom[2], 10, 95, 430, 180)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_IconProfile = GUICtrlCreateIcon($g_aCoreIcons[0], 99, 20, 120, 48, 48)
	$g_hIconProfile = GUICtrlGetHandle($g_IconProfile)
	$g_hLblPrflTitle = GUICtrlCreateLabel(FileGetVersion($g_sBrowserPath, $FV_PRODUCTNAME) & " " & _
		FileGetVersion($g_sBrowserPath), 78, 125, 350, 20)
	GUICtrlSetFont($g_hLblPrflTitle, 10)
	$g_hLblPrflPublisher = GUICtrlCreateLabel(FileGetVersion($g_sBrowserPath, $FV_COMPANYNAME), 78, 145, 350, 15)
	GUICtrlSetColor($g_hLblPrflPublisher, 0x555555)
	$g_hLblPrflPathCaption = GUICtrlCreateLabel(StringFormat($g_aLangCustom[3], $g_sCoreProcess), 20, 180, 350, 18)
	GUICtrlSetColor($g_hLblPrflPathCaption, 0x555555)
	$g_hLblPrflPathExe = GUICtrlCreateLabel($g_sBrowserPath, 20, 200, 350, 35)
	GUICtrlSetColor($g_hLblPrflPathExe, 0x086896)
	GUICtrlSetCursor($g_hLblPrflPathExe, 0)
	GUICtrlCreateLabel($g_aLangCustom[4] & Chr(32), 20, 235, 130, 18, $SS_RIGHT)
	GUICtrlSetColor(-1, 0x555555)
	$g_hLblProcessUsage = _GUICtrlFFLabel_Create($g_hCoreGui, "0 MB", 150, 235, 100, 18)
	GUICtrlCreateLabel($g_aLangCustom[5]& Chr(32), 20, 253, 130, 18, $SS_RIGHT)
	GUICtrlSetColor(-1, 0x555555)
	$g_hLblProcessPeak = _GUICtrlFFLabel_Create($g_hCoreGui, "0 MB", 150, 253, 100, 18)
	$g_hBtnPrflBrowse = GUICtrlCreateButton($g_aLangCustom[6], 320, 235, 110, 30)
	GUICtrlSetState($g_hBtnPrflBrowse, $GUI_DEFBUTTON)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	GUICtrlSetOnEvent($g_hLblPrflPathExe, "_RunBrowser")

	GUICtrlCreateGroup($g_aLangCustom[7], 10, 285, 430, 160)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_hChkReduceEnabled = GUICtrlCreateCheckbox(Chr(32) & $g_aLangCustom[8], 20, 315, 180, 20)
	$g_hComboReduceMill = GUICtrlCreateCombo("", 210, 313, 110, 20)
	GUICtrlSetData($g_hComboReduceMill, "100|250|500|1000|2000|3000|4000|5000|6000|7000|8000|9000|10000|15000|30000|45000|60000|300000|600000|900000|1800000|2700000|3600000|7200000", $g_iBoostMill)
	GUICtrlCreateLabel($g_aLangCustom[9], 327, 318, 80, 20)

	$g_hChkCleanLimit = GUICtrlCreateCheckbox(Chr(32) & $g_aLangCustom[10], 20, 338, 270, 20)
	$g_hComboCleanLimit = GUICtrlCreateCombo("", 290, 339, 55, 20)
	GUICtrlSetData($g_hComboCleanLimit, "5|10|20|30|40|50|60|70|80|90|100|150|200|250|300|350|500|600|800|1000", $g_iCleanLimit)
	GUICtrlCreateLabel("MB", 352, 341, 50, 20)
	$g_hChkBrowserAutoStart = GUICtrlCreateCheckbox(Chr(32) & StringFormat($g_aLangCustom[11], $g_sBrowserName), 20, 361, 320, 20)
	$g_hChkExtendedProcs = GUICtrlCreateCheckbox(Chr(32) & $g_aLangCustom[12], 20, 384, 220, 20)
	$g_hBtnExtendedProcs = GUICtrlCreateButton($g_aLangCustom[13], 250, 384, 180, 30)
	$g_hChkStartWindows = GUICtrlCreateCheckbox(Chr(32) & $g_aLangCustom[14], 20, 415, 320, 20)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	$g_hLblUpdated = GUICtrlCreateLabel($g_aLangCustom[15], 10, 455, 200, 20)
	GUICtrlSetColor($g_hLblUpdated, 0x008000)
	GUICtrlSetState($g_hLblUpdated, $GUI_HIDE)

	$g_hBtnCancel = GUICtrlCreateButton($g_aLangCustom[16], 235, 450, 100, 30)
	$g_hBtnSave = GUICtrlCreateButton($g_aLangCustom[17], 340, 450, 100, 30)
	GUICtrlSetState($g_hBtnSave, $GUI_DISABLE)
	GUICtrlSetOnEvent($g_hBtnSave, "_SaveFireminConfig")

	GUICtrlCreateLabel("", -10, 486, 500, 1)
	GUICtrlSetBkColor(-1, 0xD6D6D6)
	$g_hLblTimeStatus = GUICtrlCreateLabel("", 10, 493, 450, 25)
	GUICtrlSetColor($g_hLblTimeStatus, 0x333333)

	GUICtrlSetState($g_hChkReduceEnabled, $g_iBoostEnabled)
	GUICtrlSetState($g_hChkCleanLimit, $g_iLimitEnabled)
	GUICtrlSetState($g_hChkBrowserAutoStart, $g_iStartBrowser)
	GUICtrlSetState($g_hChkExtendedProcs, $g_iExtProcsEnabled)
	GUICtrlSetState($g_hChkStartWindows, FileExists(@StartupDir & "\Firemin.lnk"))

	GUICtrlSetOnEvent($g_hBtnPrflBrowse, "_FindBrowser")
	GUICtrlSetOnEvent($g_hChkReduceEnabled, "_SetBoost")
	GUICtrlSetOnEvent($g_hComboReduceMill, "_SetBoost")
	GUICtrlSetOnEvent($g_hChkCleanLimit, "_SetCleanLimit")
	GUICtrlSetOnEvent($g_hComboCleanLimit, "_SetCleanLimit")
	GUICtrlSetOnEvent($g_hChkExtendedProcs, "_SetExtendedProcsEnabled")
	GUICtrlSetOnEvent($g_hChkBrowserAutoStart, "_EnableSaveSettings")
	GUICtrlSetOnEvent($g_hChkStartWindows, "_EnableSaveSettings")
;~ 	GUICtrlSetOnEvent($g_BtnExtendedProcs, "_ExtendedProcessesDlg")

	GUICtrlSetOnEvent($g_hBtnCancel, "_CloseCoreGui")
	GUICtrlSetOnEvent($g_hBtnSave, "_SaveFireminConfig")

	_LoadBrowser($g_sBrowserPath)
	_SetControlStates()

	GUISetState(@SW_SHOW, $g_hCoreGui)
	AdlibRegister("_OnIconsHover", 65)
	AdlibRegister("_GetCoreProcessPeak", 5000)

	GUICtrlSetState($g_hChkStartWindows, FileExists(@StartupDir & "\Firemin.lnk"))
	_SetBoostDescription()

	_GetCoreProcessUsage()
	_GetCoreProcessPeak()

EndFunc   ;==>_StartCoreGui


Func _CloseCoreGui()

	TrayItemSetState($g_hTrItemOpenCore, $TRAY_ENABLE)

	GUIDelete($g_hCoreGui)

	_LoadConfiguration()
	_SetTrayItemStates()

	AdlibUnRegister("_OnIconsHover")
	AdlibUnRegister("_GetCoreProcessPeak")

EndFunc


Func _SetTrayItemStates()

	TrayItemSetText($g_hTrItemBrsrRun, "Run " & $g_sBrowserName)
	TrayItemSetText($g_hTrItemBrsrRunSafe, "Run " & $g_sBrowserName & " in Safemode")

	If _ReturnSafeModeCommand() == "" Then
		TrayItemSetState($g_hTrItemBrsrRunSafe, $TRAY_DISABLE)
	Else
		TrayItemSetState($g_hTrItemBrsrRunSafe, $TRAY_ENABLE)
	EndIf

EndFunc


#Region "Events"

Func _OnIconsHover()

	Local $iCursor = GUIGetCursorInfo()
	If Not @error Then

		If $iCursor[4] = $g_hGuiIcon And $g_aCoreIcons[2] == 1 Then
			$g_aCoreIcons[2] = 0
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[1], 201)
		ElseIf $iCursor[4] <> $g_hGuiIcon And $g_aCoreIcons[2] == 0 Then
			$g_aCoreIcons[2] = 1
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[0], 99)
		EndIf

	EndIf

EndFunc   ;==>_OnIconsHover


Func _ReduceMemory()
	; _WinAPI_EmptyWorkingSet(@AutoItPID)
EndFunc


;~ https://www.autoitscript.com/forum/topic/99603-resize-but-dont-get-smaller-than-original-size/#comment-714621
Func WM_GETMINMAXINFO($hWnd, $msg, $wParam, $lParam)
	Local $tagMaxinfo = DllStructCreate("int;int;int;int;int;int;int;int;int;int", $lParam)
	DllStructSetData($tagMaxinfo, 7, $g_iCoreGuiWidth) ; min X
	DllStructSetData($tagMaxinfo, 8, $g_iCoreGuiHeight) ; min Y
	Return 0
EndFunc   ;==>WM_GETMINMAXINFO


Func WM_SYSCOMMAND($hWnd, $msg, $wParam, $lParam)
	Switch BitAND($wParam, 0xFFF0)
		Case 0xF010, 0xF000
			Local $tBool = DllStructCreate("int")
			DllCall("user32.dll", "int", "SystemParametersInfo", "int", 38, "int", 0, "ptr", DllStructGetPtr($tBool), "int", 0)
			$g_OldSystemParam = DllStructGetData($tBool, 1)
			DllCall("user32.dll", "int", "SystemParametersInfo", "int", 37, "int", 0, "ptr", 0, "int", 2)
	EndSwitch
EndFunc   ;==>WM_SYSCOMMAND


Func WM_EXITSIZEMOVE($hWnd, $msg, $wParam, $lParam)
	DllCall("user32.dll", "int", "SystemParametersInfo", "int", 37, "int", $g_OldSystemParam, "ptr", 0, "int", 2)
EndFunc   ;==>WM_EXITSIZEMOVE
#EndRegion "Events"


#Region "Resources"

Func _SetResources()

	If @Compiled Then

		$g_aCoreIcons[0] = @ScriptFullPath
		$g_aCoreIcons[1] = @ScriptFullPath

		For $iLi = 0 To $CNT_LOGICONS - 1
			$g_aLognIcons[$iLi] = @ScriptFullPath
		Next

		For $iMi = 0 To $CNT_MENUICONS - 1
			$g_aMenuIcons[$iMi] = @ScriptFullPath
		Next

		$g_sDlgOptionsIcon = @ScriptFullPath

	Else

		$g_aCoreIcons[0] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & ".ico"
		$g_aCoreIcons[1] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & "H.ico"

		$g_aLognIcons[0] = $g_sThemesDir & "\Icons\logging\Information.ico"
		$g_aLognIcons[1] = $g_sThemesDir & "\Icons\logging\Complete.ico"
		$g_aLognIcons[2] = $g_sThemesDir & "\Icons\logging\Cross.ico"
		$g_aLognIcons[3] = $g_sThemesDir & "\Icons\logging\Exclamation.ico"
		$g_aLognIcons[4] = $g_sThemesDir & "\Icons\logging\Smiley-Glass.ico"
		$g_aLognIcons[5] = $g_sThemesDir & "\Icons\logging\Skull.ico"
		$g_aLognIcons[6] = $g_sThemesDir & "\Icons\logging\Snowman.ico"

		$g_aMenuIcons[0] = $g_sThemesDir & "\Icons\Menus\Gear.ico"
		$g_aMenuIcons[1] = $g_sThemesDir & "\Icons\Menus\Logbook.ico"
		$g_aMenuIcons[2] = $g_sThemesDir & "\Icons\Menus\Close.ico"
		$g_aMenuIcons[3] = $g_sThemesDir & "\Icons\Menus\Update.ico"
		$g_aMenuIcons[4] = $g_sThemesDir & "\Icons\Menus\Home.ico"
		$g_aMenuIcons[5] = $g_sThemesDir & "\Icons\Menus\Mail.ico"
		$g_aMenuIcons[6] = $g_sThemesDir & "\Icons\Menus\GitHub.ico"
		$g_aMenuIcons[7] = $g_sThemesDir & "\Icons\Menus\About.ico"

		$g_sDlgOptionsIcon = $g_sThemesDir & "\Icons\Dialogs\Gear.ico"

	EndIf

	$g_aCoreIcons[2] = 1

EndFunc   ;==>_SetResources

#EndRegion "Resources"


#Region "Working Directories"

Func _ResetWorkingDirectories()

	$g_sPathIni = $g_sWorkingDir & "\" & $g_sProgShortName & ".ini"
	$g_sCacheRoot = $g_sWorkingDir & "\Cache\" & $g_sProgShortName
	If $g_iEnableCache == 1 Then DirCreate($g_sCacheRoot)

EndFunc   ;==>_ResetWorkingDirectories


Func _SetAppDataDirectory()

	DirCreate($g_sAppDataRoot)

	$g_sWorkingDir = $g_sAppDataRoot

	_ResetWorkingDirectories()
	_GenerateIniFile($g_sPathIni, 0)

EndFunc   ;==>_SetAppDataDirectory


Func _SetWorkingDirectories()

	If IniRead($g_sPathIni, $g_sProgShortName, "PortableEdition", 1) = 0 Then
		_SetAppDataDirectory()
	Else
		If Not _GenerateIniFile($g_sPathIni) Then
			_SetAppDataDirectory()
		Else
			_ResetWorkingDirectories()
		EndIf
	EndIf

EndFunc   ;==>_SetWorkingDirectories


Func _GenerateIniFile($iniPath, $bPortable = 1)
	Local $iResult
    ; MsgBox(0, "", $iniPath)
	$iResult = IniWrite($iniPath, $g_sProgShortName, "PortableEdition", $bPortable)
	Return $iResult
EndFunc   ;==>_GenerateIniFile

#EndRegion "Working Directories"


#Region "Configuration (Settings)"

Func _LoadConfiguration()

	$g_iCheckForUpdates = Int(IniRead($g_sPathIni, $g_sProgShortName, "CheckForUpdates", 4))
	$g_iClearCacheOnExit = Int(IniRead($g_sPathIni, $g_sProgShortName, "ClearCacheOnExit", 0))
	$g_iUptimeMonitor = Int(IniRead($g_sPathIni, "Donate", "Seconds", 0))
	$g_iDonateTime = Int(IniRead($g_sPathIni, "Donate", "DonateTime", 0))
	$g_sBrowserPath = IniRead($g_sPathIni, $g_sProgShortName, "BrowserPath", @ProgramFilesDir & "\Mozilla Firefox\firefox.exe")
	$g_iBoostEnabled = Int(IniRead($g_sPathIni, $g_sProgShortName, "BoostEnabled", 1))
	$g_iBoostMill = Int(IniRead($g_sPathIni, $g_sProgShortName, "Boost", 500))
	$g_iLimitEnabled = Int(IniRead($g_sPathIni, $g_sProgShortName, "LimitEnabled", 1))
	$g_iCleanLimit = Int(IniRead($g_sPathIni, $g_sProgShortName, "ReduceLimit", 10))
	$g_iStartBrowser = Int(IniRead($g_sPathIni, $g_sProgShortName, "StartBrowser", 0))
	$g_iExtProcsEnabled = Int(IniRead($g_sPathIni, $g_sProgShortName, "EnableExtendedProcs", 1))
	$g_sExtendedProcs = IniRead($g_sPathIni, $g_sProgShortName, "ExtendedProcs", "plugin-container.exe")

	_LoadBrowser($g_sBrowserPath)

EndFunc   ;==>_LoadConfiguration


Func _SaveFireminConfig()

	If GUICtrlRead($g_hChkBrowserAutoStart) = $GUI_CHECKED Then
		$g_iStartBrowser = 1
	Else
		$g_iStartBrowser  = 0
	EndIf

	IniWrite($g_sPathIni, $g_sProgShortName, "BrowserPath", $g_sBrowserPath)
	IniWrite($g_sPathIni, $g_sProgShortName, "BoostEnabled", $g_iBoostEnabled)
	IniWrite($g_sPathIni, $g_sProgShortName, "Boost", $g_iBoostMill)
	IniWrite($g_sPathIni, $g_sProgShortName, "LimitEnabled", $g_iLimitEnabled)
	IniWrite($g_sPathIni, $g_sProgShortName, "ReduceLimit", $g_iCleanLimit)
	IniWrite($g_sPathIni, $g_sProgShortName, "StartBrowser", $g_iStartBrowser)
	IniWrite($g_sPathIni, $g_sProgShortName, "EnableExtendedProcs", $g_iExtProcsEnabled)

	If GUICtrlRead($g_hChkStartWindows) = $GUI_CHECKED Then
		FileDelete(@StartupDir & "\Firemin.lnk")
		FileCreateShortcut(@ScriptFullPath, @StartupDir & "\Firemin.lnk", @StartupDir)
	Else
		FileDelete(@StartupDir & "\Firemin.lnk")
	EndIf

	GUICtrlSetState($g_hBtnSave, $GUI_DISABLE)
	GUICtrlSetState($g_hLblUpdated, $GUI_SHOW)

EndFunc


Func _SetBoost()

	If GUICtrlRead($g_hChkReduceEnabled) = $GUI_CHECKED Then
		$g_iBoostEnabled = 1
	Else
		$g_iBoostEnabled = 0
		GUICtrlSetColor($g_hLblProcessUsage, 0x000000)
	EndIf

	$g_iBoostMill = Int(GUICtrlRead($g_hComboReduceMill))
	AdlibRegister("_ClearProcessesWorkingSet", $g_iBoostMill)
	_ClearProcessesWorkingSet()
	_EnableSaveSettings()
	_SetControlStates()
	_SetBoostDescription()

EndFunc


Func _SetCleanLimit()

	If GUICtrlRead($g_hChkCleanLimit) = $GUI_CHECKED Then
		$g_iLimitEnabled = 1
	Else
		$g_iLimitEnabled = 0
	EndIf

	$g_iCleanLimit = Int(GUICtrlRead($g_hComboCleanLimit))
	_ClearProcessesWorkingSet()
	_EnableSaveSettings()
	_SetControlStates()

EndFunc


Func _SetBoostDescription()

	Local $iTime = 0
	Local $sTimeVar = $g_aLangCustom[18]

	If $g_iBoostMill < 1000 Then
		$sTimeVar = $g_aLangCustom[18]
		$iTime = $g_iBoostMill
	ElseIf __iBetween(1000, 60000, $g_iBoostMill) Then
		$sTimeVar = $g_aLangCustom[19]
		$iTime = Round($g_iBoostMill / 1000)
	ElseIf __iBetween(60000, 3600000, $g_iBoostMill) Then
		$sTimeVar = $g_aLangCustom[20]
		$iTime = Round($g_iBoostMill / 60000)
	ElseIf $g_iBoostMill >= 3600000 Then
		$sTimeVar = $g_aLangCustom[21]
		$iTime = Round($g_iBoostMill / 3600000)
	EndIf

	GUICtrlSetData($g_hLblTimeStatus, StringFormat($g_aLangCustom[22], $iTime, $sTimeVar, $g_iCleanLimit))

EndFunc


Func __iBetween($iLower, $iUpper, $iNumber)

	If $iNumber >=  $iLower And $iNumber < $iUpper Then
		Return True
	Else
		REturn False
	EndIf

EndFunc


Func _SetExtendedProcsEnabled()

	If GUICtrlRead($g_hChkExtendedProcs) = $GUI_CHECKED Then
		$g_iExtProcsEnabled = 1
	Else
		$g_iExtProcsEnabled = 0
	EndIf
	_EnableSaveSettings()

EndFunc


Func _SetControlStates()

	If GUICtrlRead($g_hChkReduceEnabled) = $GUI_CHECKED Then

		GUICtrlSetState($g_hComboReduceMill, $GUI_ENABLE)
		GUICtrlSetState($g_hChkCleanLimit, $GUI_ENABLE)
		GUICtrlSetState($g_hChkExtendedProcs, $GUI_ENABLE)

		If GUICtrlRead($g_hChkCleanLimit) = $GUI_CHECKED Then
			GUICtrlSetState($g_hComboCleanLimit, $GUI_ENABLE)
		Else
			GUICtrlSetState($g_hComboCleanLimit, $GUI_DISABLE)
		EndIf

	Else

		GUICtrlSetState($g_hComboReduceMill, $GUI_DISABLE)
		GUICtrlSetState($g_hChkCleanLimit, $GUI_DISABLE)
		GUICtrlSetState($g_hChkExtendedProcs, $GUI_DISABLE)
		GUICtrlSetState($g_hComboCleanLimit, $GUI_DISABLE)

	EndIf

EndFunc


Func _EnableSaveSettings()
	GUICtrlSetState($g_hBtnSave, $GUI_ENABLE)
	GUICtrlSetState($g_hLblUpdated, $GUI_HIDE)
EndFunc

#EndRegion "Configuration (Settings)"


Func _CheckForUpdates()

	_SetUpdateAnimationState($GUI_SHOW)
	_SoftwareUpdateCheck(True)
	_SetUpdateAnimationState($GUI_HIDE)

EndFunc   ;==>_CheckForUpdates


Func _UptimeMonitor()
	If $g_iUptimeMonitor < 2000000000 Then
		$g_iUptimeMonitor += 1
	EndIf
EndFunc


Func _SetUpdateAnimationState($iState)

	If $iState = 16 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_SHOW)
			GUICtrlSetState($g_hGuiIcon, $GUI_HIDE)
		EndIf
		_SetProcessingStates($GUI_DISABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[1])

	ElseIf $iState = 32 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
			GUICtrlSetState($g_hGuiIcon, $GUI_SHOW)
		EndIf
		_SetProcessingStates($GUI_ENABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[0])

	EndIf

EndFunc   ;==>_SetUpdateAnimationState


Func _SetProcessingStates($iState)

	GUICtrlSetState($g_hMenuFile, $iState)
	GUICtrlSetState($g_hMenuHelp, $iState)

EndFunc   ;==>_SetProcessingStates


Func _ShutdownProgram()

	IniWrite($g_sPathIni, "Donate", "Seconds", $g_iUptimeMonitor)

	; AdlibUnRegister("_ReduceMemory")
	AdlibUnRegister("_OnIconsHover")
	AdlibUnRegister("_UptimeMonitor")
	AdlibUnRegister("_ClearProcessesWorkingSet")

	If $g_iUptimeMonitor > $g_iDonateTimeSet = True And _
			$g_iDonateTime == 0 Then
		IniWrite($g_sPathIni, "Donate", "DonateTime", $g_iUptimeMonitor)
		_Donate_ShowDialog()
	Else
		If $g_iClearCacheOnExit == 1 Then DirRemove($g_sCacheRoot, 1)
		WinSetTrans($g_hCoreGui, Default, 255)
		_TerminateProgram()
	EndIf

EndFunc   ;==>_ShutdownProgram


Func _TerminateProgram()

	If $g_iSingleton Then
		Local $iPID = ProcessExists(@ScriptName)
		If $iPID Then ProcessClose($iPID)
	EndIf
	Exit

EndFunc


Func _MinimizeProgram()

	Local $iState = WinGetState($g_hCoreGui)

	If BitAND($iState, 4) Then
		WinSetState($g_hCoreGui, "", @SW_MINIMIZE)
	EndIf

EndFunc


Func _FindBrowser()

	Local $sBrowserOpenDlg = FileOpenDialog($g_aLangCustom[23], _WinAPI_PathRemoveFileSpec($g_sBrowserPath), _
		"Browser (*.exe)", $FD_FILEMUSTEXIST)
	If Not @error Then
		If $sBrowserOpenDlg <> $g_sBrowserPath Then
			GUICtrlSetState($g_hBtnSave, $GUI_ENABLE)
		EndIf
        _LoadBrowser($sBrowserOpenDlg)
		_ResetProcessUsage()
		_SetTrayItemStates()
    EndIf

EndFunc


Func _LoadBrowser($sBrowserPath)

	If FileExists($sBrowserPath) Then

		$g_sBrowserPath = $sBrowserPath
		$g_sCoreProcess = _WinAPI_PathStripPath($g_sBrowserPath)
		$g_sBrowserName = FileGetVersion($g_sBrowserPath, $FV_PRODUCTNAME)

		GUICtrlSetData($g_hLblPrflPathCaption, StringFormat($g_aLangCustom[3], $g_sCoreProcess))
		GUICtrlSetData($g_hLblPrflTitle, $g_sBrowserName & " " & FileGetVersion($g_sBrowserPath))
		GUICtrlSetData($g_hLblPrflPublisher, FileGetVersion($g_sBrowserPath, $FV_COMPANYNAME))
		GUICtrlSetData($g_hLblPrflPathExe, $g_sBrowserPath)

		_WinAPI_DestroyIcon(_SendMessage($g_hIconProfile, $STM_SETIMAGE, 1, _WinAPI_ShellExtractIcon($g_sBrowserPath, 0, 48, 48)))

	Else

		_WinAPI_DestroyIcon(_SendMessage($g_hIconProfile, $STM_SETIMAGE, 1, _WinAPI_ShellExtractIcon($g_aCoreIcons[0], 0, 48, 48)))
		$sBrowserPath = @ProgramFilesDir & "\Mozilla Firefox\firefox.exe"
		;IniWrite($g_ReBarPathIni, $g_ReBarShortName, "BrowserPath", $sBrowserPath)

	EndIf

EndFunc


Func _RunBrowser()
	__RunBrowser()
EndFunc


Func _RunBrowserSafe()
	__RunBrowser(_ReturnSafeModeCommand())
EndFunc


Func __RunBrowser($sParam = "")
	If FileExists($g_sBrowserPath) Then
		If Not ProcessExists($g_sCoreProcess) Then
			ShellExecute($g_sBrowserPath, $sParam, $g_sBrowserPath)
		EndIf
	EndIf
EndFunc


Func _ReturnSafeModeCommand()

	Local $sParameters = ""
	Local $aSafeMode = IniReadSection($g_sPathIni, "Safemode")
    If Not @error Then
        For $s = 1 To $aSafeMode[0][0]
			If $aSafeMode[$s][0] = $g_sCoreProcess Then
				Return $aSafeMode[$s][1]
			EndIf
        Next
    EndIf

	Return SetError(1, 0, "")

EndFunc


Func _GetCoreProcessUsage()

	If ProcessExists($g_sCoreProcess) Then

		$g_iCoreProcessUsage = _GetProcessUsage($g_sCoreProcess, 0)
		_GUICtrlFFLabel_SetData($g_hLblProcessUsage, $g_iCoreProcessUsage & " MB")

		If $g_iBoostEnabled Then

			If $g_iLimitEnabled Then
				If $g_iCoreProcessUsage > $g_iCleanLimit Then
					_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFFFF0000)
				Else
					_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFF000000)
				EndIf
			Else
				_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFF000000)
			EndIf

		Else

			If $g_iCoreProcessUsage > 300 Then
				_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFFFF0000)
			Else
				_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFF000000)
			EndIf

		EndIf

	EndIf

EndFunc


Func _GetCoreProcessPeak()

	If ProcessExists($g_sCoreProcess) Then
		$g_iCoreProcessPeak =_GetProcessUsage($g_sCoreProcess, 1)
		_GUICtrlFFLabel_SetData($g_hLblProcessPeak, $g_iCoreProcessPeak & " MB")
	Else
		_ResetProcessUsage()
	EndIf

EndFunc


Func _ClearProcessesWorkingSet()

	If $g_iBoostEnabled Then
		If $g_iLimitEnabled Then
			If Round(_GetProcessUsage($g_sCoreProcess, 0)) > $g_iCleanLimit Then
				__ClearSingleProcess($g_sCoreProcess)
			EndIf
		Else
			__ClearSingleProcess($g_sCoreProcess)
		EndIf
	EndIf

	_GetCoreProcessUsage()
	_ClearExtendedProcs()

EndFunc


Func _ResetProcessUsage()
	_GUICtrlFFLabel_SetData($g_hLblProcessUsage, "0 MB")
	_GUICtrlFFLabel_SetData($g_hLblProcessPeak, "0 MB")
	_GUICtrlFFLabel_SetTextColor($g_hLblProcessUsage, 0xFF000000)
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


Func _ClearExtendedProcs()

	If $g_iExtProcsEnabled Then

		Local $sCleanProc = ""
		Local $aProcs = StringSplit($g_sExtendedProcs, ",")
		For $x = 1 To $aProcs[0]
			$sCleanProc = StringStripCR(StringStripWS($aProcs[$x], 3))
			__ClearSingleProcess($sCleanProc)
		Next

	EndIf

EndFunc


Func __ClearSingleProcess($sProcess)

	Local $aProcessList = ProcessList($sProcess)
	If Not @error Then
		For $i = 1 To $aProcessList[0][0]
			_WinAPI_EmptyWorkingSet($aProcessList[$i][1])
		Next
	EndIf

EndFunc


Func _ShowPreferencesDlg()

	_Localization_Preferences()	;~ Load Preferences Language Strings
	Local $iLangCount = 1

	$g_iParentState = WinGetState($g_hCoreGui)
	If $g_iParentState > 0 Then
		$g_iParent = $g_hCoreGui
		WinSetTrans($g_hCoreGui, Default, 200)
		GUISetState(@SW_DISABLE, $g_hCoreGui)
	Else
		$g_iParent = 0
	EndIf

	TrayItemSetState($g_hTrItemExProcs, $TRAY_DISABLE)
	GUICtrlSetState($g_hBtnExtendedProcs, $GUI_DISABLE)

	$g_hOptionsGui = GUICreate($g_aLangPreferences[0], 450, 500, -1, -1, BitOR($WS_CAPTION, $WS_POPUPWINDOW), $WS_EX_TOPMOST, $g_iParent)
	GUISetFont(Default, Default, Default, "Verdana", $g_hOptionsGui, 5)
	If $g_iParentState > 0 Then GUISetIcon($g_sDlgOptionsIcon, $g_iDialogIconStart + 2, $g_hAboutGui)
	GUISetOnEvent($GUI_EVENT_CLOSE, "__CloseOptionsDlg", $g_hOptionsGui)
	GUIRegisterMsg($WM_NOTIFY, "__LanguageListEvents")

	GUICtrlCreateTab(10, 10, 430, 430)
	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[1]))
	GUICtrlCreateGroup($g_aLangPreferences[4], 25, 50, 400, 350)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateLabel($g_aLangPreferences[7], 45, 80, 365, 80)
	GUICtrlSetColor(-1, 0x555555)
	GUICtrlSetFont(-1, 9)
	$g_hOEditExtProcs = GUICtrlCreateEdit("", 45, 160, 365, 150, $WS_VSCROLL + $ES_AUTOVSCROLL)
	GUICtrlSetData($g_hOEditExtProcs, IniRead($g_sPathIni, $g_sProgShortName, "ExtendedProcs", "plugin-container.exe"))
	GUICtrlSetState($g_hOEditExtProcs, $GUI_NOFOCUS)
	GUICtrlSetFont($g_hOEditExtProcs, 9)
	Local $iSelLen = StringLen(GUICtrlRead($g_hOEditExtProcs))
	_GUICtrlEdit_SetSel($g_hOEditExtProcs, $iSelLen, $iSelLen)
	$g_hOEditExtProcsTemp = GUICtrlRead($g_hOEditExtProcs)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateTabItem("") ; end tabitem definition

	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[2]))
	GUICtrlCreateGroup($g_aLangPreferences[4], 25, 50, 400, 100)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_hOChkClearCacheOnExit = GUICtrlCreateCheckbox($g_aLangPreferences[8], 35, 80, 300, 20)
	GUICtrlSetState($g_hOChkClearCacheOnExit, $g_iClearCacheOnExit)
	$g_hOLblCacheSize = GUICtrlCreateLabel(StringFormat($g_aLangPreferences[9], Round(DirGetSize($g_sCacheRoot) / 1024, 2)), 35, 115, 200, 20)
	GUICtrlSetColor($g_hOLblCacheSize, 0x555555)
	$g_hOBtnClearCache = GUICtrlCreateButton($g_aLangPreferences[10], 255, 105, 150, 30)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	GUICtrlSetOnEvent($g_hOChkClearCacheOnExit, "__CheckPreferenceChange")
	GUICtrlSetOnEvent($g_hOBtnClearCache, "__ClearCacheFolder")
	GUICtrlCreateTabItem("") ; end tabitem definition

	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[3]))
	GUICtrlCreateGroup($g_aLangPreferences[6], 25, 50, 400, 350)
	GUICtrlSetFont(-1, 10, 700, 2)

	Local $aSelLangInfo = __ISO639CodeToIndex($g_sSelectedLanguage)
	$g_hOIconLanguage = GUICtrlCreateIcon(@ScriptFullPath, $g_iLangIconStart + $aSelLangInfo[1], 40, 90, 32, 32)
	$g_hOLblLanguage = GUICtrlCreateLabel($aSelLangInfo[0], 80, 98, 300)
	GUICtrlSetFont($g_hOLblLanguage, 11)

	$g_hOListLanguage = GUICtrlCreateListView("", 40, 135, 365, 200)
	_GUICtrlListView_SetExtendedListViewStyle($g_hOListLanguage, BitOR($LVS_EX_BORDERSELECT, _
			$LVS_EX_FLATSB, $LVS_EX_FULLROWSELECT, $LVS_EX_GRIDLINES, $LVS_EX_SUBITEMIMAGES, $LVS_EX_DOUBLEBUFFER, _
			$WS_EX_CLIENTEDGE, $LVS_EX_FLATSB, $LVS_EX_INFOTIP))

	$g_hOImgLanguage = _GUIImageList_Create(16, 16, 5, 3)
	For $l = 0 To 29
		_GUIImageList_AddIcon($g_hOImgLanguage, @ScriptFullPath, 0 - $g_iLangIconStart - $l)
	Next
	_GUICtrlListView_SetImageList($g_hOListLanguage, $g_hOImgLanguage, 1)

	_GUICtrlListView_AddColumn($g_hOListLanguage, Chr(32) & "Language", 280)
	_GUICtrlListView_AddColumn($g_hOListLanguage, Chr(32) & "Code", 150)
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_hOListLanguage), "Explorer")
	_GUICtrlListView_AddItem($g_hOListLanguage, Chr(32) & "English", 0)
	_GUICtrlListView_AddSubItem($g_hOListLanguage, 0, "en", 1)
	_GUICtrlListView_SetItemParam($g_hOListLanguage, 0, 3300)

	Local $hLangSearch = FileFindFirstFile($g_sLanguageDir & "\*.ini")
	While 1
		Local $sLangFileName = FileFindNextFile($hLangSearch)
		;~ If there is no more file matching the search.
		If @error Then ExitLoop
		If $sLangFileName = "en.ini" Then ContinueLoop

		Local $sLangIniPath = $g_sLanguageDir & "\" & $sLangFileName
		ConsoleWrite($sLangIniPath)

		Local $sLangName = IniRead($sLangIniPath, "Language", "Name", "")
		Local $sLangCode = IniRead($sLangIniPath, "Language", "Code", "")
		Local $sLangEncoding = IniRead($sLangIniPath, "Language", "Encoding", "")
		Local $aIndex = __ISO639CodeToIndex($sLangCode)
		Local $iLangIcon = $aIndex[1]

		_GUICtrlListView_AddItem($g_hOListLanguage, Chr(32) & $sLangName, $iLangIcon)
		_GUICtrlListView_AddSubItem($g_hOListLanguage, $iLangCount, $sLangCode, 1)
		_GUICtrlListView_SetItemParam($g_hOListLanguage, $iLangCount, 3300 + $iLangCount)
		$iLangCount += 1

	WEnd

	Local $iSelLangItem = __FindLanguageItem(3300 + $aSelLangInfo[1])
	_GUICtrlListView_SetItemSelected($g_hOListLanguage, $iSelLangItem, True, True)
	_GUICtrlListView_EnsureVisible($g_hOListLanguage, $iSelLangItem)
	GUICtrlCreateLabel(StringFormat($g_aLangPreferences[14], $g_aLangPreferences[15]), 40, 350, 365, 35)
	GUICtrlSetColor(-1, 0x555555)
	GUICtrlSetFont(-1, 9)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateTabItem("") ; end tabitem definition

	$g_hOLblPrefsUpdated = GUICtrlCreateLabel($g_aLangPreferences[17], 25, 455, 200, 20)
	GUICtrlSetColor($g_hOLblPrefsUpdated, 0x008000)
	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_HIDE)
	$g_hOBtnSave = GUICtrlCreateButton($g_aLangPreferences[15], 210, 450, 100, 30)
	GUICtrlSetFont($g_hOBtnSave, 10)
	GUICtrlSetState($g_hOBtnSave, $GUI_FOCUS)
	GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	GUICtrlSetOnEvent($g_hOBtnSave, "__SavePreferences")

	$g_hOBtnCancel = GUICtrlCreateButton($g_aLangPreferences[16], 320, 450, 100, 30)
	GUICtrlSetFont($g_hOBtnCancel, 10)
	GUICtrlSetOnEvent($g_hOBtnCancel, "__CloseOptionsDlg")

	GUISetState(@SW_SHOW, $g_hOptionsGui)
	AdlibRegister("__CheckExtendedProcsChange", 800)

EndFunc


Func __CheckExtendedProcsChange()

	Local $sEPTemp = GUICtrlRead($g_hOEditExtProcs)

	If StringCompare($sEPTemp, $g_hOEditExtProcsTemp) <> 0 Then
		GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
		$g_hOEditExtProcsTemp = $sEPTemp
	EndIf

EndFunc


Func __ClearCacheFolder()

	GUICtrlSetState($g_hOBtnClearCache, $GUI_DISABLE)
	DirRemove($g_sCacheRoot, 1)
	DirCreate($g_sCacheRoot)

	GUICtrlSetData($g_hOLblCacheSize, StringFormat($g_aLangPreferences[9], Round(DirGetSize($g_sCacheRoot) / 1024, 2)))
	GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[18])
	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
	GUICtrlSetState($g_hOBtnClearCache, $GUI_ENABLE)

EndFunc


Func __CheckPreferenceChange()

	If __CheckBoxChanged("ClearCacheOnExit", $g_hOChkClearCacheOnExit) = True Then
		GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
	Else
		GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	EndIf

	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_HIDE)

EndFunc


Func __CheckBoxChanged($sPreference, $hCheckBox)

	Local $iTmp = IniRead($g_sPathIni, $g_sProgShortName, $sPreference, -1)
	If $iTmp > -1 Then
		If GUICtrlRead($hCheckBox) = $iTmp Or GUICtrlRead($hCheckBox) = ($iTmp + 4) Then
			Return False
		Else
			Return True
		EndIf
	Else
		Return True
	EndIf

EndFunc


Func __SavePreferences()

	Local $iLangChanged = False
	Local $sEPTemp = GUICtrlRead($g_hOEditExtProcs)
	Local $sEPSavedTemp = IniRead($g_sPathIni, $g_sProgShortName, "ExtendedProcs", "plugin-container.exe")

	If StringCompare($sEPTemp, $sEPSavedTemp) <> 0 Then
		IniWrite($g_sPathIni, $g_sProgShortName, "ExtendedProcs", GUICtrlRead($g_hOEditExtProcs))
	EndIf

	If $g_tSelectedLanguage <> $g_sSelectedLanguage Then
		Local $iMsgBoxResult = MsgBox($MB_OKCANCEL + $MB_ICONINFORMATION, $g_aLangPreferences[20], $g_aLangPreferences[21], 0, $g_hOptionsGui)
		Switch $iMsgBoxResult
			Case 1
				IniWrite($g_sPathIni, $g_sProgShortName, "Language", $g_tSelectedLanguage)
				GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[20])
				GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
				GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
				$iLangChanged = True
			Case 2
				GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
				Return 0
		EndSwitch
	EndIf

	If GUICtrlRead($g_hOChkClearCacheOnExit) = $GUI_CHECKED Then
		$g_iClearCacheOnExit = 1
	ElseIf GUICtrlRead($g_hOChkClearCacheOnExit) = $GUI_UNCHECKED Then
		$g_iClearCacheOnExit = 0
	EndIf

	IniWrite($g_sPathIni, $g_sProgShortName, "ClearCacheOnExit", $g_iClearCacheOnExit)

	If $iLangChanged = True Then
		$iMsgBoxResult = MsgBox($MB_OKCANCEL + $MB_ICONINFORMATION, $g_aLangPreferences[22], $g_aLangPreferences[23], 0, $g_hOptionsGui)
		Switch $iMsgBoxResult
			Case 1
				_ShutdownProgram()
			Case 2
				$iLangChanged = False
		EndSwitch
	Else
		GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[19])
		GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
		GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	EndIf

EndFunc


Func __CancelPreferences()
EndFunc


Func __FindLanguageItem($pItem)

	Local $tInfo, $iSelLangItem
	$tInfo = DllStructCreate($tagLVFINDINFO)
    DllStructSetData($tInfo, "Flags", $LVFI_PARAM)
    DllStructSetData($tInfo, "Param", $pItem)
    $iSelLangItem = _GUICtrlListView_FindItem($g_hOListLanguage, -1, $tInfo)
	Return $iSelLangItem

EndFunc


Func __CloseOptionsDlg()

	TrayItemSetState($g_hTrItemExProcs, $TRAY_ENABLE)
	GUICtrlSetState($g_hBtnExtendedProcs, $GUI_ENABLE)

	If $g_iParentState > 0 Then
		WinSetTrans($g_hCoreGui, Default, 255)
		GUISetState(@SW_ENABLE, $g_hCoreGui)
	EndIf
	GUIDelete($g_hOptionsGui)
	AdlibUnRegister("__CheckExtendedProcsChange")

EndFunc


Func __ISO639CodeToIndex($i639 = "en")

	Local $aLangInfo[3]

	Switch $i639
		Case "en"
			$aLangInfo[0] = "English"
			$aLangInfo[1] = 0
		Case "af"
			$aLangInfo[0] = "Afrikaans"
			$aLangInfo[1] = 1
		Case "ar"
			$aLangInfo[0] = "Arabic"
			$aLangInfo[1] = 2
		Case "bg"
			$aLangInfo[0] = "Bulgarian"
			$aLangInfo[1] = 3
		Case "cs"
			$aLangInfo[0] = "Czech"
			$aLangInfo[1] = 4
		Case "da"
			$aLangInfo[0] = "Danish"
			$aLangInfo[1] = 5
		Case "de"
			$aLangInfo[0] = "German"
			$aLangInfo[1] = 6
		Case "el"
			$aLangInfo[0] = "Greek"
			$aLangInfo[1] = 7
		Case "es"
			$aLangInfo[0] = "Spanish"
			$aLangInfo[1] = 8
		Case "fr"
			$aLangInfo[0] = "French"
			$aLangInfo[1] = 9
		Case "hi"
			$aLangInfo[0] = "Hindi"
			$aLangInfo[1] = 10
		Case "hr"
			$aLangInfo[0] = "Croatian"
			$aLangInfo[1] = 11
		Case "id"
			$aLangInfo[0] = "Indonesian"
			$aLangInfo[1] = 12
		Case "is"
			$aLangInfo[0] = "Icelandic"
			$aLangInfo[1] = 13
		Case "it"
			$aLangInfo[0] = "Italian"
			$aLangInfo[1] = 14
		Case "iw"
			$aLangInfo[0] = "Hebrew"
			$aLangInfo[1] = 15
		Case "ja"
			$aLangInfo[0] = "Japanese"
			$aLangInfo[1] = 16
		Case "ko"
			$aLangInfo[0] = "Korean"
			$aLangInfo[1] = 17
		Case "nl"
			$aLangInfo[0] = "Dutch"
			$aLangInfo[1] = 18
		Case "no"
			$aLangInfo[0] = "Norwegian"
			$aLangInfo[1] = 19
		Case "pl"
			$aLangInfo[0] = "Polish"
			$aLangInfo[1] = 20
		Case "pt"
			$aLangInfo[0] = "Portuguese"
			$aLangInfo[1] = 21
		Case "ro"
			$aLangInfo[0] = "Romanian"
			$aLangInfo[1] = 22
		Case "ru"
			$aLangInfo[0] = "Russian"
			$aLangInfo[1] = 23
		Case "sk"
			$aLangInfo[0] = "Slovak"
			$aLangInfo[1] = 24
		Case "sv"
			$aLangInfo[0] = "Swedish"
			$aLangInfo[1] = 25
		Case "th"
			$aLangInfo[0] = "Thai"
			$aLangInfo[1] = 26
		Case "tr"
			$aLangInfo[0] = "Turkish"
			$aLangInfo[1] = 27
		Case "vi"
			$aLangInfo[0] = "Vietnamese"
			$aLangInfo[1] = 28
		Case "zh-CN"
			$aLangInfo[0] = "Chinese"
			$aLangInfo[1] = 29
	EndSwitch

	Return $aLangInfo

EndFunc


Func __LanguageListEvents($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg, $wParam
	Local $hWndFrom, $iIDFrom, $iCode, $tNMHDR, $hWndListView, $tInfo, $iLi
	; Local $tBuffer
	$hWndListView = $g_hOListLanguage
	If Not IsHWnd($g_hOListLanguage) Then $hWndListView = GUICtrlGetHandle($g_hOListLanguage)

	$tNMHDR = DllStructCreate($tagNMHDR, $lParam)
	$hWndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")
	Switch $hWndFrom
		Case $hWndListView
			Switch $iCode
				Case $NM_CLICK ; Sent by a list-view control when the user clicks an item with the left mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
					Local $iSelLang = DllStructGetData($tInfo, "Index")
					$g_tSelectedLanguage = _GUICtrlListView_GetItemText($g_hOListLanguage, $iSelLang, 1)
					Local $aSelLangInfo = __ISO639CodeToIndex($g_tSelectedLanguage)
					GUICtrlSetImage($g_hOIconLanguage, @ScriptFullPath, $g_iLangIconStart + $aSelLangInfo[1])
					GUICtrlSetData($g_hOLblLanguage, $aSelLangInfo[0])

					If $g_tSelectedLanguage <> $g_sSelectedLanguage Then
						GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
					Else
						GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
					EndIf

;~ 					$g_SelectedSolution = DllStructGetData($tInfo, "Index")
;~ 					If _DetectSolutionIndexChange($g_SelSolutionTemp) Then
;~ 						$g_SelSolutionTemp = $g_SelectedSolution
;~ 						If $g_SelectedSolution = -1 Then
;~ 							_SetAllOptionStates($GUI_DISABLE)
;~ 							_SetAllOptionsChecked($GUI_UNCHECKED)
;~ 						Else
;~ 							_SetModules($g_SelectedSolution)
;~ 						EndIf
;~ 					EndIf

				Case $NM_DBLCLK ; Sent by a list-view control when the user double-clicks an item with the left mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
;~ 					;~ $g_SelectedSolution = DllStructGetData($tInfo, "Index")

				Case $NM_RCLICK ; Sent by a list-view control when the user clicks an item with the right mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
;~ 					;~ $g_SelectedSolution = DllStructGetData($tInfo, "Index")

			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_NOTIFY