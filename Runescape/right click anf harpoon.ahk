F1::

	MouseGetPos, myX, myY

	; Command #1
	WinActivate, Old School RuneScape
	MouseMove, myX, myY,  3
	MouseClick, right, myX, myY 
	Sleep, 75
	
	myY := myY + 90

	; Command #2
	WinActivate, Old School RuneScape
	MouseMove, myX, myY,  3
	MouseClick, left, myX, myY 
	Sleep, 75

Return


Escape::
	MsgBox, Loop executed %counter% times!
	MsgBox, Goodbye!

	ExitApp
Return
