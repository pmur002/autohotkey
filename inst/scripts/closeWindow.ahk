
; Arg 1 is a window ID

if A_Args.Length() < 1
{
    MsgBox % "This script requires at least 1 parameter"
    ExitApp
}
if WinExist("ahk_id " A_Args[1])
    WinClose
