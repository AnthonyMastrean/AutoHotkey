#NoEnv
#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

FileInstall, dtksneak.ico, dtksneak.ico

Menu, Tray, Icon, dtksneak.ico
Menu, Tray, Tip, Watching for the DTK SDK dialog...

Loop 
{
  WinWait, DTK Barcode Reader SDK Activation
  WinActivate
  ControlClick, Close, DTK Barcode Reader SDK Activation
}
