A::

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

F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1346, 480,  3
		MouseClick, left, 1346, 480 
		Sleep, 1000
		
		Sleep, 35000

		counter++
	}

	MsgBox, Loop executed %counter% times!
Return


Escape::
	MsgBox, Loop executed %counter% times!
	MsgBox, Goodbye!

	ExitApp
Return
