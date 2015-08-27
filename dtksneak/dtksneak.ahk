#NoEnv
#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

FileInstall, dtksneak.ico, dtksneak.ico

Menu, Tray, Icon, dtksneak.ico
Menu, Tray, Tip, Waiting for the DTK dialog...

Loop 
{
  WinWait, DTK Barcode Reader SDK Activation
  WinActivate
  ControlClick, Close, DTK Barcode Reader SDK Activation
}
