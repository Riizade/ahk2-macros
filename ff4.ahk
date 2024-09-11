#Requires AutoHotkey v2.0

SetTitleMatchMode 2 ; set match mode to match if the title contains the given string
#HotIf WinActive("Final Fantasy IV Advance") ; only apply the following hotkeys if a FF window is focused
HoldTime := 50
IntervalTime := 50

PressKey(key) {
    Send "{" . key . " down}"
    Sleep HoldTime
    Send "{" . key . " up}"
    Sleep IntervalTime
}

PressKeys(keys) {
    Loop keys.Length
        PressKey(keys[A_Index])
}

ParomuFiraKeys := ["Down", "x", "Down", "Down", "Down", "Right", "x", "Left", "Left", "Left", "x"]
AttackKeys := ["x", "x"]
TeraFiraKeys := ["Down", "x", "Down", "Down", "Down", "Down", "Right", "x", "Left", "Left", "Left", "x"]

g::{
    Send "{Down down}"
    Sleep HoldTime
    Send "{Down up}"
    Sleep IntervalTime
    Send "{Down down}"
    Sleep HoldTime
    Send "{Down up}"
}
1::{
    PressKeys(AttackKeys)
}

2::{
    PressKeys(AttackKeys)
}

3::{
    PressKeys(ParomuFiraKeys)
}

4::{

}

5::{
    PressKeys(TeraFiraKeys)
}