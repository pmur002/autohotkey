
WinGet, Windows, List
clipboard := ""
Loop, %Windows%
{
    window := Windows%A_index%
    clipboard := clipboard "`n" window
}
