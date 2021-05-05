F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Open Magic Menu
		WinActivate, Old School RuneScape
		MouseMove, 773, 218,  20 
		MouseClick, left, 773, 218 
		Sleep, 1000

		; Varrock Teleport
		WinActivate, Old School RuneScape
		MouseMove, 629, 311,  20 
		MouseClick, left, 629, 311 
		Sleep, 1000

		counter++
	}

	MsgBox, Loop executed %counter% times!
Return


Escape::
	MsgBox, Loop executed %counter% times!
	MsgBox, Goodbye!

	ExitApp
Return
