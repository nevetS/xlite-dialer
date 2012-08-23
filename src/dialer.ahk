;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win7
; Author:         Steve Kallestad
;
; Script Function:
;   dial a phone number in X-lite based on a sip link in the browser
;   need to have script compiled and a registry key installed
;    HKEY_CLASSES_ROOT\sip\shell\open\command\(default) = "path\to\dialer.exe" "%1"

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;The script sees incoming parameters as the variables %1%, %2%, and so on. In addition, %0% contains the number of ;parameters passed (0 if none). The following example exits the script when too few parameters are passed to it:


if 0 = 0  ; The left side of a non-expression if-statement is always the name of a variable.
{
    MsgBox This script requires at least 1 incoming parameter but it only received %0%.
    ExitApp
}
if 0 = 1 ;We have one parameter, a phone number
{
WinActivate X-Lite ;activate the x-lite window
loca = %1%
localvar := substr(loca,5)
Send  %localvar% 
;# send the phone number
Send {Enter} 
;# Enter presses the call button 
}
ExitApp                         