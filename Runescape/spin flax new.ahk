F1::
	MsgBox, The macro has been paused. Close this box to resume.`n`nThe macro has executed %count% times so far.
Return

F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1332, 364,  20 
		MouseClick, left, 1332, 364 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		Sleep, 6000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 458, 656,  20 
		MouseClick, left, 458, 656 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		Sleep, 4000

		; Command #5
		WinActivate, Old School RuneScape
		MouseMove, 1364, 242,  20 
		MouseClick, left, 1364, 242 
		Sleep, 1000

		; Command #6
		WinActivate, Old School RuneScape
		Sleep, 4000

		; Command #7
		WinActivate, Old School RuneScape
		MouseMove, 824, 524,  20 
		MouseClick, left, 824, 524 
		Sleep, 1000

		; Command #8
		WinActivate, Old School RuneScape
		Sleep, 4000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 1036, 852,  20 
		MouseClick, left, 1036, 852 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 448, 970,  20 
		MouseClick, left, 448, 970 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		Sleep, 50000

		; Command #12
		WinActivate, Old School RuneScape
		MouseMove, 1332, 310,  20 
		MouseClick, left, 1332, 310 
		Sleep, 1000

		; Command #13
		WinActivate, Old School RuneScape
		Sleep, 4000

		; Command #14
		WinActivate, Old School RuneScape
		MouseMove, 416, 646,  20 
		MouseClick, left, 416, 646 
		Sleep, 1000

		; Command #15
		WinActivate, Old School RuneScape
		Sleep, 2000

		; Command #16
		WinActivate, Old School RuneScape
		MouseMove, 574, 914,  20 
		MouseClick, left, 574, 914 
		Sleep, 1000

		; Command #17
		WinActivate, Old School RuneScape
		Sleep, 2000

		; Command #18
		WinActivate, Old School RuneScape
		MouseMove, 1386, 206,  20 
		MouseClick, left, 1386, 206 
		Sleep, 1000

		; Command #19
		WinActivate, Old School RuneScape
		Sleep, 8000

		; Command #20
		WinActivate, Old School RuneScape
		MouseMove, 704, 316,  20 
		MouseClick, left, 704, 316 
		Sleep, 1000

		; Command #21
		WinActivate, Old School RuneScape
		Sleep, 4000

		; Command #22
		WinActivate, Old School RuneScape
		MouseMove, 718, 236,  20 
		MouseClick, left, 718, 236 
		Sleep, 1000

		; Command #23
		WinActivate, Old School RuneScape
		MouseMove, 970, 738,  20 
		MouseClick, left, 970, 738 
		Sleep, 1000

		; Command #24
		WinActivate, Old School RuneScape
		MouseMove, 728, 592,  20 
		MouseClick, right, 728, 592 
		Sleep, 1000

		; Command #25
		WinActivate, Old School RuneScape
		MouseMove, 710, 820,  20 
		MouseClick, left, 710, 820 
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
