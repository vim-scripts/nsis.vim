" Vim syntax file
" Language: NSIS, aka, NullSoft Installation System	
" Maintainer:	Wenzhi Liang <wzhliang@yahoo.com>
" Last change:	21 Sept 2001

syn clear
syn case match

syn keyword nsisGeneralAttr    	 Name OutFile Caption Icon BGGradient SilentInstall CRCCheck
syn keyword nsisLicenseAttr       LicenseText LicenseData 
syn keyword nsisInstallAttr       InstallDirRegKey InstallDir 
syn keyword nsisComponentAttr     ComponentText InstType EnableBitmap DisabledBitmap
syn keyword nsisDirAttr           DirShow DirText
syn keyword nsisOptionAttr        InstallColors AutoCloseWindow ShowInstDetails
syn keyword nsisUninstAttr        UninstallText UninstallExeName UninstallIcon

syn keyword nsisCompilerFlags     SetOverwrite SetCompress SetDatablockOptimize SetDateSave

syn keyword nsisSection           Section SectionIn SectionEnd SectionDivider
syn keyword nsisFunction          Function FunctionEnd

"ToDo Labels

syn keyword nsisGeneralInstruct         SetOutPath File Exec ExecWait ExecShell Rename Delete RMDir
syn keyword nsisRegistryInstruct        WriteRegStr WriteRegDword WriteRegBin WriteINIStr ReadRegStr ReadINIStr DeleteRegValue DeleteRegKey DeleteINISec DeleteINIStr
syn keyword nsisAdvanceInstruct         CreateDirectory CopyFiles SetFileAttributes CreateShortCut RegDLL UnRegDLL InstNSPlug DeleteNSPlug GetFullDLLPath Nop
syn keyword nsisBranching               GoTo Call IfErrors ClearErrors FindWindow FindWindowbyTitle IfFileExists MessageBox CompareDLLVersions CompareFileTimes StrCmp Abort
syn keyword nsisMiscInstruct            SetDetailsView SetAutoClose DetailPrint Sleep BringToFront HideWindow StrCpy GetParentDir

"ToDo match variables.

syn match nsisComment /#.*\|;.*/

syn region nsisString1 start=/"/ skip=/'\|`/ end=/"/
syn region nsisString2 start=/'/ skip=/"\|`/ end=/'/
syn region nsisString3 start=/`/ skip=/"\|'/ end=/`/

if !exists("did_nsis_syntax_inits")
  let did_nsis_syntax_inits = 1

  hi link nsisGeneralAttr	    Macro
  hi link nsisLicenseAttr	    Macro
  hi link nsisInstallAttr	    Macro
  hi link nsisComponentAttr    Macro
  hi link nsisDirAttr	       Macro
  hi link nsisOptionAttr	    Macro
  hi link nsisUninstAttr	    Macro

  hi link nsisCompilerFlags    Macro

  hi link nsisSection	       Function
  hi link nsisFunction	       Function

  hi link nsisGeneralInstruct         Statement
  hi link nsisRegistryInstruct        Statement
  hi link DeleteRegKey                Statement
  hi link nsisAdvanceInstruct         Statement
  hi link DeleteNSPlug                Statement
  hi link nsisBranching               Statement
  hi link CompareDLLVersions          Statement
  hi link SetDetailsView              Statement
  hi link GetParentDir                Statement

  hi link nsisComment	       Comment
  
  hi link nsisString1          String
  hi link nsisString3          String
  hi link nsisString2          String
endif

let b:current_syntax = "nsis"
