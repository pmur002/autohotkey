
; Send keys to the active window

if A_Args.Length() > 0
{
    for index, element in A_Args
    {
        if index > 1
            Send {space}
        Send %element%
    }
}
