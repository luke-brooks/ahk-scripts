F1::
	MsgBox, The macro has been paused. Close this window to resume.
Return

F6::

	; Command #1
	WinActivate, Old School RuneScape
	MouseMove, 1386, 226,  20 
	MouseClick, left, 1386, 226 
	Sleep, 1000

	; Command #2
	WinActivate, Old School RuneScape
	Sleep, 15000

	; Command #3
	WinActivate, Old School RuneScape
	MouseMove, 632, 302,  20 
	MouseClick, left, 632, 302 
	Sleep, 1000

	; Command #4
	WinActivate, Old School RuneScape
	Sleep, 45000

	; Command #5
	WinActivate, Old School RuneScape
	MouseMove, 374, 308,  20 
	MouseClick, left, 374, 308 
	Sleep, 1000

	; Command #6
	WinActivate, Old School RuneScape
	Sleep, 45000

	Loop, 2
	{
		; Command #7
		WinActivate, Old School RuneScape
		MouseMove, 802, 284,  20 
		MouseClick, left, 802, 284 
		Sleep, 1000

		; Command #8
		WinActivate, Old School RuneScape
		Sleep, 45000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 392, 310,  20 
		MouseClick, left, 392, 310 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		Sleep, 45000
	}

	; Command #11
	WinActivate, Old School RuneScape
	MouseMove, 1346, 350,  20 
	MouseClick, left, 1346, 350 
	Sleep, 1000

	; Command #12
	WinActivate, Old School RuneScape
	Sleep, 15000

	; Command #13
	WinActivate, Old School RuneScape
	MouseMove, 688, 278,  20 
	MouseClick, left, 688, 278 
	Sleep, 1000

	; Command #14
	WinActivate, Old School RuneScape
	Sleep, 5000

	; Command #15
	WinActivate, Old School RuneScape
	MouseMove, 714, 236,  20 
	MouseClick, left, 714, 236 
	Sleep, 1000

	; Command #16
	WinActivate, Old School RuneScape
	MouseMove, 962, 744,  20 
	MouseClick, left, 962, 744 
	Sleep, 1000
Return


Escape::
	MsgBox, Goodbye!
	ExitApp
Return
