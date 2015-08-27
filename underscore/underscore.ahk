#NoEnv
#SingleInstance force 
SendMode Input
SetWorkingDir %A_ScriptDir%

FileInstall, underscore.ico, underscore.ico
FileInstall, underscore_off.ico, underscore_off.ico

set(state) {
  global enabled := state

  icon := enabled ? "underscore.ico" : "underscore_off.ico"
  tip := enabled ? "ON" : "OFF"

  Menu Tray, Icon, %icon%
  Menu Tray, Tip, Underscore: %tip%
}

set(false)

^+u::set(!enabled)

#If enabled

Space::Send _ 

~Escape::
~Tab::
~Enter::set(!enabled) 
