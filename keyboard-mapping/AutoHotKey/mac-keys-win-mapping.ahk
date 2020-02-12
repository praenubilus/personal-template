SetTitleMatchMode, 2

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

;Left Cmd + Shift to duplicate current line to next line
;<!<+D::Send {Home}{Shift down}{End}{Shift up}^C{End}{Enter}^V

;left Cmd Z/Cmd Shift Z for Undo/Redo
<!z::Send, ^z
<!<+z::Send, ^+z

; right Ctrl+Scroll lock to lock screen
;{RControl down}Scrolllock{RControl Up}::Send #l
;^{ScrollLock}::Send, #l

; Left Option+Backspace to Delete previous word(Mapping to Win+Backspace)
<#BackSpace::Send, {Control down}{BackSpace}{Control up}

; Left Option+Del to Delete following word(Mapping to Win+Del)
<#Del::Send, {Control down}{Del}{Control up}

;Cmd backspace to delete from caret to the begining of a line
<!BackSpace::Send {Shift down}{Home}{Shift up}{BackSpace}
;Cmd Del to delete from caret to the end of a line
<!Del::Send {Shift down}{End}{Shift up}{Del}

;Cmd Shift Left to select from caret to the beginning of a line
<!<+Left::Send {Shift down}{Home}{Shift up}
;Cmd Shift Right to select from caret to the end of a line
<!<+Right::Send {Shift down}{End}{Shift up}

; Shift+PrintScreen to mimic Cmd Shift S for partial Screenshot
+PrintScreen::Send #+s

; Operations in Chrome mimic operations in Mac Safari
#ifWinActive ahk_class Chrome_WidgetWin_1
<!t::Send, ^t	; 1. left Cmd t for new tab
<!w::Send, ^w	; 2. left Cmd w to close tab 
<+<!t::Send, ^+t; 3. left ctrl Cmd t to recover last tab
!LButton::Send {Control down}{LButton}{Control up}	; 4, Cmd+Left Click to open new Tab
<!l::Send ^l	;5 Cmd L to focus URL input
<!<+Left::Send ^+{Tab}	; 6. Cmd+Shift left/right to switch Tab Left/Right
<!<+Right::Send ^{Tab}	; 6. Cmd+Shift left/right to switch Tab Left/Right
<!r::Send {F5}		; 7. Cmd+R to refresh the current page
<!g::Send, ^g		; 8. during search, go to next
<!<+g::Send, ^+g	; 8. go to previous
<!b::Send, ^b		; 9. bold text in web editor
<!i::Send, ^i		; 10. italic text in web editor
return
#ifWinActive

; Visual Studio Setting for easier shortcuts trigger
; Cmd K map to Ctrl K, for shortcut combination trigger
; Cmd T for debug unit test trigger
; Cmd W for close tabs
; Cmd N for reate new Items
; Refactor Trigger
; Cmd K, Cmd U for uncomment
; Cmd+Shift+F, Search in Entire Document

#IfWinActive, Visual Studio
<!k::Send, ^k
<!t::Send, ^t
<!w::Send, ^{F4}
<!n::Send, ^+A	
<!r::Send, ^r	
<!u::Send, ^u
<!<+F::Send, ^+F
return
#IfWinActive
