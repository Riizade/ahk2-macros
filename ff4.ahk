#Requires AutoHotkey v2.0

SetTitleMatchMode 2 ; set match mode to match if the title contains the given string
#HotIf WinActive("Final Fantasy IV Advance") ; only apply the following hotkeys if a FF window is focused

!r::Send Reload

HoldTime := 50
IntervalTime := 50
TurnIntervalTime := 500

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

Combat() {
    PressKeys(AttackKeys) ; Edge
    Sleep TurnIntervalTime
    PressKeys(AttackKeys) ; Cecil
    Sleep TurnIntervalTime
    PressKeys(LydiaThundaga) ; Lydia
    Sleep TurnIntervalTime
    PressKeys(RosaCureda) ; Rosa
}

LydiaThundaga := ["Down", "x", "Down", "Down", "Down", "Down", "Down", "Down", "Down", "Down", "Right", "x", "Left", "Left", "Left", "x"]
RosaCureda := ["Down", "x", "Down", "Down", "Down", "Down", "Down", "Down", "Down", "x", "Right", "x"]
ParomuFiraKeys := ["Down", "x", "Down", "Down", "Down", "Right", "x", "Left", "Left", "Left", "x"]
AttackKeys := ["x", "x"]
TeraFiragaKeys := ["Down", "Down", "x", "Down", "Down", "Down", "Down", "x", "Left", "Left", "Left", "x"]
Tent := ["Enter", "x", "x", "x"]

f:: {
    Combat()
}

g::{
    Send "{Down down}"
    Sleep HoldTime
    Send "{Down up}"
    Sleep IntervalTime
    Send "{Down down}"
    Sleep HoldTime
    Send "{Down up}"
}

t::{
    PressKeys(Tent)
}
