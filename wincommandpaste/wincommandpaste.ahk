#NoEnv
#SingleInstance, force 
SendMode, Input
SetWorkingDir, %A_ScriptDir%

FileInstall, wincommandpaste.ico, wincommandpaste.ico

Menu, Tray, Icon, wincommandpaste.ico
Menu, Tray, Tip, Windows Command Paste

#IfWinActive ahk_class ConsoleWindowClass
  ^v::Send !{Space}EP
#IfWinActive

#IfWinActive ahk_class Console_2_Main
  ^v::Send {Raw}%clipboard%
#IfWinActive
