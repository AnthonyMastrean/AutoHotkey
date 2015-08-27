#NoEnv
#SingleInstance, Force 

gui_width   := A_ScreenWidth
gui_height  := A_ScreenHeight / 5
gui_x       := "Center"
gui_y       := A_ScreenHeight - (gui_height * 2)
gui_trans   := 150 ; 0 - 255
gui_color   := "Black"

font_size   := 50
font_color  := "White"
font_face   := "Verdana"

text_width  := gui_width
text_height := gui_height

Gui, +AlwaysOnTop +Disabled +LastFound +Owner +ToolWindow -Caption -SysMenu
Gui, Color, %gui_color%
Gui, Font, S%font_size% C%font_color%, %font_face%
Gui, Add, Text, Vtext_control W%text_width% H%text_height% +BackgroundTrans +Center
Gui, Show, W%gui_width% H%gui_height% x%gui_x% y%gui_y% NoActivate

; WinSet, TransColor, %gui_color% %gui_trans%
WinSet, Transparent, %gui_trans%

Input, user_input, L1, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{Capslock}{Numlock}{PrintScreen}{Pause}

GuiControl, Text, text_control, %user_input%
