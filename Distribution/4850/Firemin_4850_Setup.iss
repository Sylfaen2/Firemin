;* Firemin - Installer script
;* Copyright (C) 2018 Rizonesoft

; Requirements:
; Inno Setup: http://www.jrsoftware.org/isdl.php

; Preprocessor related stuff
#if VER < EncodeVer(5,5,9)
	#error Update your Inno Setup version (5.5.9 or newer)
#endif

#define distrodir "Firemin_4850"

#ifnexist distrodir + "\Firemin.exe"
	#error Compile Firemin.exe first.
#endif

#ifnexist distrodir + "\Firemin_X64.exe"
	#error Compile Firemin_X64.exe first.
#endif

#define app_version   "6.0.0.4850"
#define app_name      "Firemin"
#define app_copyright "Copyright (C) 2018 Rizonesoft"
#define quick_launch  "{userappdata}\Microsoft\Internet Explorer\Quick Launch"

[Setup]
AppId={#app_name}
AppName={#app_name}
AppVersion={#app_version}
AppVerName={#app_name} {#app_version}
AppPublisher=Rizonesoft
AppPublisherURL=https://www.rizonesoft.com
AppSupportURL=https://www.rizonesoft.com/support/
AppUpdatesURL=https://goo.gl/rMmLm6
AppContact=https://www.rizonesoft.com/contact
AppCopyright={#app_copyright}
UninstallDisplayIcon={app}\Firemin.exe
UninstallDisplayName={#app_name} {#app_version}
DefaultDirName={pf}\Rizonesoft\Firemin
LicenseFile=Firemin_4850\Docs\License.txt
OutputDir=.
OutputBaseFilename=Firemin_4850_Setup
WizardImageFile=compiler:WizModernImage-IS.bmp
Compression=lzma2/max
InternalCompressLevel=max
SolidCompression=yes
EnableDirDoesntExistWarning=no
AllowNoIcons=yes
ShowTasksTreeLines=yes
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableWelcomePage=yes
AllowCancelDuringInstall=no
MinVersion=5.1sp3
ArchitecturesAllowed=x86 x64
ArchitecturesInstallIn64BitMode=x64
CloseApplications=true
SetupMutex="firemin_setup_mutex"

[Languages]
Name: en; MessagesFile: compiler:Default.isl

[Messages]
SetupAppTitle    =Setup - {#app_name}
SetupWindowTitle =Setup - {#app_name}

[CustomMessages]
en.msg_AppIsRunning          =Setup has detected that {#app_name} is currently running.%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit.
en.msg_AppIsRunningUninstall =Uninstall has detected that {#app_name} is currently running.%n%nPlease close all instances of it now, then click OK to continue, or Cancel to exit.
en.msg_DeleteSettings        =Do you also want to delete {#app_name}'s settings?%n%nIf you plan on installing {#app_name} again then you do not have to delete them.
en.tsk_AllUsers              =For all users
en.tsk_CurrentUser           =For the current user only
en.tsk_Other                 =Other tasks:
en.tsk_ResetSettings         =Reset {#app_name}'s settings
en.tsk_StartMenuIcon         =Create a Start Menu shortcut
en.tsk_LaunchWelcomePage     =Get more from Rizonesoft

[Tasks]
Name: desktopicon;        Description: {cm:CreateDesktopIcon};     GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: desktopicon\user;   Description: {cm:tsk_CurrentUser};       GroupDescription: {cm:AdditionalIcons}; Flags: unchecked exclusive
Name: desktopicon\common; Description: {cm:tsk_AllUsers};          GroupDescription: {cm:AdditionalIcons}; Flags: unchecked exclusive
Name: startup_icon;       Description: {cm:tsk_StartMenuIcon};     GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon;    Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;             OnlyBelowVersion: 6.01
Name: reset_settings;     Description: {cm:tsk_ResetSettings};     GroupDescription: {cm:tsk_Other};       Flags: checkedonce unchecked; Check: SettingsExistCheck()

[Files]
Source: {#distrodir}\Firemin_X64.exe; DestDir: {app}; DestName: Firemin.exe; Flags: ignoreversion; Check: Is64BitInstallMode()
Source: {#distrodir}\Firemin.exe; DestDir: {app}; Flags: ignoreversion; Check: not Is64BitInstallMode()
Source: {#distrodir}\Firemin.ini; DestDir: {userappdata}\Rizonesoft\Firemin; Flags: onlyifdoesntexist uninsneveruninstall
Source: {#distrodir}\Docs\Changes.txt; DestDir: {app}\Docs; Flags: ignoreversion
Source: {#distrodir}\Docs\License.txt; DestDir: {app}\Docs; Flags: ignoreversion
Source: {#distrodir}\Docs\Readme.txt; DestDir: {app}\Docs; Flags: ignoreversion
Source: {#distrodir}\Language\Firemin\en.ini; DestDir: {app}\Language\Firemin; Flags: ignoreversion
Source: {#distrodir}\Language\Firemin\pl.ini; DestDir: {app}\Language\Firemin; Flags: ignoreversion
Source: {#distrodir}\Language\Firemin\ru.ini; DestDir: {app}\Language\Firemin; Flags: ignoreversion
Source: {#distrodir}\Language\Firemin\el.ini; DestDir: {app}\Language\Firemin; Flags: ignoreversion
Source: {#distrodir}\Themes\Processing\32\Stroke.ani; DestDir: {app}\Themes\Processing\32; Flags: ignoreversion
Source: {#distrodir}\Themes\Processing\64\Globe.ani; DestDir: {app}\Themes\Processing\64; Flags: ignoreversion

[Dirs]

[Icons]
Name: {commondesktop}\{#app_name}; Filename: {app}\Firemin.exe; Tasks: desktopicon\common; Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: Firemin; IconFilename: {app}\Firemin.exe; IconIndex: 0
Name: {userdesktop}\{#app_name};   Filename: {app}\Firemin.exe; Tasks: desktopicon\user;   Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: Firemin; IconFilename: {app}\Firemin.exe; IconIndex: 0
Name: {userstartmenu}\{#app_name}; Filename: {app}\Firemin.exe; Tasks: startup_icon;       Comment: {#app_name} {#app_version}; WorkingDir: {app}; AppUserModelID: Firemin; IconFilename: {app}\Firemin.exe; IconIndex: 0
Name: {#quick_launch}\{#app_name}; Filename: {app}\Firemin.exe; Tasks: quicklaunchicon;    Comment: {#app_name} {#app_version}; WorkingDir: {app};                        					IconFilename: {app}\Firemin.exe; IconIndex: 0

[INI]
Filename: {app}\Firemin.ini; Section: Firemin; Key: PortableEdition; String: 0
Filename: {userappdata}\Rizonesoft\Firemin\Firemin.ini; Section: Firemin; Key: PortableEdition; String: 0

[Run]
Filename: {app}\Firemin.exe; Description: {cm:LaunchProgram,{#app_name}}; WorkingDir: {app}; Flags: nowait postinstall shellexec skipifsilent unchecked
Filename: https://goo.gl/Ua2ooa; Description: {cm:tsk_LaunchWelcomePage}; Flags: nowait postinstall shellexec skipifsilent

[InstallDelete]
Type: files;      Name: {userdesktop}\{#app_name}.lnk;   Check: not IsTaskSelected('desktopicon\user')   and IsUpgrade()
Type: files;      Name: {commondesktop}\{#app_name}.lnk; Check: not IsTaskSelected('desktopicon\common') and IsUpgrade()
Type: files;      Name: {userstartmenu}\{#app_name}.lnk; Check: not IsTaskSelected('startup_icon')       and IsUpgrade()
Type: files;      Name: {#quick_launch}\{#app_name}.lnk; Check: not IsTaskSelected('quicklaunchicon')    and IsUpgrade(); OnlyBelowVersion: 6.01
Type: files;      Name: {app}\Firemin.ini

[UninstallDelete]
Type: files;      Name: {app}\Firemin.ini
Type: dirifempty; Name: {app}

[Code]
const
	VersionURL = 'https://www.rizonesoft.com/update/Firemin.rus';
	UpdateURL = 'https://goo.gl/rMmLm6';

type
	TIntegerArray = array of Integer;
	TCompareResult = (
		crLesser,
		crEquals,
		crGreater
	);

function Max(A, B: Integer): Integer;
begin
	if A > B then Result := A else Result := B;
end;

function CompareValue(A, B: Integer): TCompareResult;
begin
	if A = B then
		Result := crEquals
	else
	if A < B then
		Result := crLesser
	else
		Result := crGreater;
end;

function AddVersionChunk(const S: string; var A: TIntegerArray): Integer;
var
	Chunk: Integer;
begin
	Chunk := StrToIntDef(S, -1);
	if Chunk <> -1 then
	begin
		Result := GetArrayLength(A) + 1;
		SetArrayLength(A, Result);
		A[Result - 1] := Chunk;
	end
	else
		RaiseException('Invalid format of version string');
end;

function ParseVersionStr(const S: string; var A: TIntegerArray): Integer;
var
	I: Integer;
	Count: Integer;
	Index: Integer;
begin
	Count := 0;
	Index := 1;

	for I := 1 to Length(S) do
	begin
		case S[I] of
			'.':
			begin
				AddVersionChunk(Copy(S, Index, Count), A);
				Count := 0;
				Index := I + 1;
			end;
			'0', '1', '2', '3', '4', '5', '6', '7', '8', '9':
			begin
				Count := Count + 1;
			end;
		else
			RaiseException('Invalid char in version string');
		end;
	end;
	Result := AddVersionChunk(Copy(S, Index, Count), A);
end;

function GetVersionValue(const A: TIntegerArray; Index,
	Length: Integer): Integer;
begin
	Result := 0;
	if (Index >= 0) and (Index < Length) then
		Result := A[Index];
end;

function CompareVersionStr(const A, B: string): TCompareResult;
var
	I: Integer;
	VerLenA, VerLenB: Integer;
	VerIntA, VerIntB: TIntegerArray;
begin
	Result := crEquals;

	VerLenA := ParseVersionStr(A, VerIntA);
	 VerLenB := ParseVersionStr(B, VerIntB);

	for I := 0 to Max(VerLenA, VerLenB) - 1 do
	begin
		Result := CompareValue(GetVersionValue(VerIntA, I, VerLenA),
			GetVersionValue(VerIntB, I, VerLenB));
		if Result <> crEquals then
			Exit;
	end;
end;

function DownloadFile(const URL: string; var Response: string): Boolean;
var
	WinHttpRequest: Variant;
begin
	Result := True;
	try
		WinHttpRequest := CreateOleObject('WinHttp.WinHttpRequest.5.1');
		WinHttpRequest.Open('GET', URL, False);
		WinHttpRequest.Send;
		Response := WinHttpRequest.ResponseText;
	except
		Result := False;
		Response := GetExceptionMessage;
	end;
end;

function InitializeSetup: Boolean;
var
	ErrorCode: Integer;
	SetupVersion: string;
	LatestVersion: string;

begin
	Result := True;
	if DownloadFile(VersionURL, LatestVersion) then
	begin
		SetupVersion := '{#SetupSetting('AppVersion')}';
		if CompareVersionStr(LatestVersion, SetupVersion) = crGreater then
		begin
			if MsgBox('There is a newer version of {#SetupSetting('AppName')} available. Do ' +
				'you want to visit the site?', mbConfirmation, MB_YESNO) = IDYES then
			begin
				Result := not ShellExec('', UpdateURL, '', '', SW_SHOW, ewNoWait,
				ErrorCode);
			end;
		end;
	end;
end;

function IsUpgrade(): Boolean;
	var
	sPrevPath: String;
begin
	sPrevPath := WizardForm.PrevAppDir;
	Result := (sPrevPath <> '');
end;

// Check if Firemin's settings exist.
function SettingsExistCheck(): Boolean;
begin
	if FileExists(ExpandConstant('{userappdata}\Rizonesoft\Firemin\Firemin.ini')) then begin
	Log('Custom Code: Settings are present');
	Result := True;
	end
	else begin
		Log('Custom Code: Settings are NOT present');
		Result := False;
	end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
	// Hide the license page if IsUpgrade()
	if IsUpgrade() and (PageID = wpLicense) then
	Result := True;
end;

procedure CleanUpSettings();
begin
	DeleteFile(ExpandConstant('{userappdata}\Rizonesoft\Firemin\Firemin.ini'));
	RemoveDir(ExpandConstant('{userappdata}\Rizonesoft\Firemin'));
end;

procedure CurPageChanged(CurPageID: Integer);
begin
	if CurPageID = wpSelectTasks then
		WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
	else if CurPageID = wpFinished then
		WizardForm.NextButton.Caption := SetupMessage(msgButtonFinish);
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
	if CurStep = ssInstall then begin
	if IsTaskSelected('reset_settings') then
		CleanUpSettings();
	end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
	// When uninstalling, ask the user to delete Firemin's settings.
	if CurUninstallStep = usUninstall then begin
		if SettingsExistCheck() then begin
			if SuppressibleMsgBox(CustomMessage('msg_DeleteSettings'), mbConfirmation, MB_YESNO or MB_DEFBUTTON2, IDNO) = IDYES then
			CleanUpSettings();
		end;
	end;
end;

procedure InitializeWizard();
begin
	WizardForm.SelectTasksLabel.Hide;
	WizardForm.TasksList.Top    := 0;
	WizardForm.TasksList.Height := PageFromID(wpSelectTasks).SurfaceHeight;
end;
