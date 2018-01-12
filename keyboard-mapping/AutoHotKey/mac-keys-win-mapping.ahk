#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;following section mimics command-q and command-w
;behaviour to close windows
;note these had to be disabled below for the
;command to ctrl key remaps
<!q::Send, !{F4}  

;Cmd F for search
<!f::Send, ^f

;Cmd A to select All
<!a::Send, ^a

;save file Cmd S
<!s::Send, ^s

;left Cmd c/v to copy/paste, left Cmd x to cut
<!c::Send, ^c
<!v::Send, ^v
<!x::Send, ^x

;during search, go to next
<!g::Send, ^g
<!<+g::Send, ^+g

;left Cmd Z/Cmd Shift Z for Undo/Redo
<!z::Send, ^z
<!<+z::Send, ^+z

; right Ctrl+Scroll lock to lock screen
;{RControl down}Scrolllock{RControl Up}::Send #l
;^{ScrollLock}::Send, #l

;Cmd backspace to delete from caret to the begining of a line
<!BackSpace::Send {Shift down}{Home}{Shift up}{BackSpace}
;Cmd Del to delete from caret to the end of a line
<!Del::Send {Shift down}{End}{Shift up}{Del}

;Cmd Shift Left to select from caret to the beginning of a line
<!<+Left::Send {Shift down}{Home}{Shift up}
;Cmd Shift Left to select from caret to the end of a line
<!<+Right::Send {Shift down}{End}{Shift up}


; Operations in Chrome mimic operations in Mac Safari
; 1. left Cmd t for new tab
; SetTitleMatchMode, 2
#ifWinActive ahk_class Chrome_WidgetWin_1
<!t::Send, ^t
; 2. left Cmd w to close tab
<!w::Send, ^w
; 3. left ctrl Cmd t to recover last tab
<+<!t::Send, ^+t
; 4, Cmd+Left Click to open new Tab
!LButton::Send {Control down}{LButton}{Control up}
; Cmd+Shift left/right to switch Tab Left/Right
<!<+Left::Send ^+{Tab}
<!<+Right::Send ^{Tab}
;5 Cmd L to focus URL input
<!l::Send ^l
#ifWinActive