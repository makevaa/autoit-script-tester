#include <Constants.au3>
#include <GUIConstantsEx.au3>
#include <ComboConstants.au3>
#include "gui.au3"
#include "util.au3"

Func idle()
	While 1 	
		Switch GUIGetMsg() 
			Case $GUI_EVENT_CLOSE
				exitScript()	

			Case $resetButton
				resetSettings()

			Case $saveButton
				saveSettings()

			Case $fileToRun
				saveSettings()

			Case $fileTitle
				saveSettings()	
				
			Case $runHotkey
				setRunHotkey()					
				saveSettings()

		EndSwitch
		sleep(40)		
	WEnd
EndFunc	

Func setRunHotkey()
    Local $prevHotkey = IniRead("config.ini", "settings", "runHotkey", "")	
    HotkeySet ("{"&$prevHotkey&"}")
    Local $hotkey = GUICtrlRead($runHotkey)
	HotkeySet ("{"&$hotkey&"}", runScriptFile)
	
	Local $curTitle = WinGetTitle("[ACTIVE]")
	WinSetTitle ($curTitle, "", $hotkey & " / " & $scriptName)
EndFunc

Func runScriptFile()
	Opt("WinTitleMatchMode", 3) ;1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
	Local $title = GUICtrlRead($fileTitle)

    If WinExists($title) Then
        WinClose ($title)
    Else
		Local $program = GUICtrlRead($fileToRun)
		ShellExecute($program)
    EndIf
EndFunc

loadSettings("config.ini")
setRunHotkey()
idle()




















