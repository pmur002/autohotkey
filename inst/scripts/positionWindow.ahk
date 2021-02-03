
if A_Args.Length() < 5
{
    MsgBox % "This script requires 5 parameters"
    ExitApp
}
if WinExist("ahk_id " A_Args[1])
    WinActivate
x := A_Args[2]
y := A_Args[3]
w := A_Args[4]
h := A_Args[5]
WinMove, A, , %x%, %y%, %w%, %h%

