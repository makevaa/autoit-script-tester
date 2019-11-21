Global $scriptName = "ScriptTester"
Global $guiInputOffset = 3

GUICreate($scriptName, 600, 120)
Opt("GUICoordMode", 1) ;0 relative, 1 absolute, 2 cell position
GUICtrlCreateLabel("• Script tester utility tool / Press hotkey to run/close your file", 20, 10)
GUICtrlSetColor(-1, $COLOR_GRAY)

Opt("GUICoordMode",0)

GUICtrlCreateLabel("File to run:", 0, 25, 80)
Global $fileToRun = GUICtrlCreateInput("", 55, $guiInputOffset * -1, 510) 

GUICtrlCreateLabel("File title:", -55, 35, 80)
Global $fileTitle = GUICtrlCreateInput("", 55, $guiInputOffset * -1, 150) 

GUICtrlCreateLabel("Hotkey to run file:", 160, $guiInputOffset, 100)
Global $runHotkey = GUICtrlCreateCombo("", 90, -$guiInputOffset, 70, 20, $CBS_DROPDOWNLIST)

GUICtrlSetData($runHotkey, "F1")
GUICtrlSetData($runHotkey, "F2")
GUICtrlSetData($runHotkey, "F3")
GUICtrlSetData($runHotkey, "F4")
GUICtrlSetData($runHotkey, "F5")
GUICtrlSetData($runHotkey, "F6")
GUICtrlSetData($runHotkey, "F7")
GUICtrlSetData($runHotkey, "F8")
GUICtrlSetData($runHotkey, "F9")
GUICtrlSetData($runHotkey, "F10")
GUICtrlSetData($runHotkey, "F11")

Global $resetButton = GUICtrlCreateButton("Reset settings", 80, -$guiInputOffset, 90, 25)
Global $saveButton = GUICtrlCreateButton("Save settings", 90, 0, 90, 25)

GUISetIcon("icon.ico")
GUISetState()