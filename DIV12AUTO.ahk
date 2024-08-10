#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2
j::
Toggle := !Toggle
loop
{
	If Not Toggle
	break

	CoordMode, Pixel, Window
	PixelSearch, Px, Py, 595, 210, 1315, 717, 0x101012, 0, Fast Rgb
	if (ErrorLevel = 0)
	{
		Sleep, 50
		MouseMove, %Px%, %Py% 20
		Sleep, 50
		Click, %Px%, %Py%
	}
}

k:: 
ExitApp