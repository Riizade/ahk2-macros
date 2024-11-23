SetTitleMatchMode 2 ; set match mode to match if the title contains the given string
#HotIf WinActive("Minecraft") ; only apply the following hotkeys if a Minecraft window is focused

; ! is the alt key
!LButton::Send "{LButton down}"
!RButton::Send "{RButton down}"
!Shift::Send "{Shift down}"
!Ctrl::Send "{Ctrl down}"
!w::Send "{w down}"
!r::Send Reload