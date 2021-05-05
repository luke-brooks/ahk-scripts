F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1236, 572,  20 
		MouseClick, left, 1236, 572 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		MouseMove, 1400, 798,  20 
		MouseClick, left, 1400, 798 
		Sleep, 1000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 1036, 858,  20 
		MouseClick, left, 1036, 858 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		MouseMove, 600, 976,  20 
		MouseClick, left, 600, 976 
		Sleep, 1000

		; Command #5
		WinActivate, Old School RuneScape
		Sleep, 18000

		; Command #6
		WinActivate, Old School RuneScape
		MouseMove, 544, 442,  20 
		MouseClick, left, 544, 442 
		Sleep, 1000

		; Command #7
		WinActivate, Old School RuneScape
		Sleep, 3000

		; Command #8
		WinActivate, Old School RuneScape
		MouseMove, 716, 242,  20 
		MouseClick, left, 716, 242 
		Sleep, 1000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 966, 736,  20 
		MouseClick, left, 966, 736 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 918, 666,  20 
		MouseClick, right, 918, 666 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		MouseMove, 890, 834,  20 
		MouseClick, left, 890, 834 
		Sleep, 1000

		; Command #12
		WinActivate, Old School RuneScape
		Send, 14
		Sleep, 1000

		; Command #13
		WinActivate, Old School RuneScape
		Send, {enter}
		Sleep, 1000

		; Command #14
		WinActivate, Old School RuneScape
		MouseMove, 340, 672,  20 
		MouseClick, right, 340, 672 
		Sleep, 1000

		; Command #15
		WinActivate, Old School RuneScape
		MouseMove, 328, 898,  20 
		MouseClick, left, 328, 898 
		Sleep, 1000

		; Command #16
		WinActivate, Old School RuneScape
		MouseMove, 1040, 164,  20 
		MouseClick, left, 1040, 164 
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
