Func exitScript()
	Exit
EndFunc

Func saveSettings()
	Local $file = "config.ini"

	IniWrite($file, "settings", "fileToRun", GUICtrlRead($fileToRun))
	IniWrite($file, "settings", "fileTitle", GUICtrlRead($fileTitle))
    IniWrite($file, "settings", "runHotkey", GUICtrlRead($runHotkey))
    
    GUICtrlSetData($saveButton, "<saved>")
    ;GUICtrlSetColor($saveButton, $COLOR_GREEN)
    sleep(250)
    GUICtrlSetData($saveButton, "Save settings")
    ;GUICtrlSetColor($saveButton, $COLOR_BLACK)
EndFunc

Func loadSettings($file)
	GUICtrlSetData ($fileToRun, IniRead($file, "settings", "fileToRun", "C:\Users\USER\scripts\MyScript\my_scirpt.au3"))
    GUICtrlSetData ($fileTitle, IniRead($file, "settings", "fileTitle", "MyScript v0.1.1"))	
    GUICtrlSetData ($runHotkey, IniRead($file, "settings", "runHotkey", "F6"))		
EndFunc

Func resetSettings()
	Local $result = MsgBox($MB_OKCANCEL, "Reset settings", "Do you want to reset program settings? Click OK to reset settings.")
	If ($result = 1) Then
		loadSettings("default.ini")	
	EndIf
EndFunc

