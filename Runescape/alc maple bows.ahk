F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1554, 488,  20 
		MouseClick, left, 1554, 488 
		Sleep, 1000

		Loop, 27
		{
			; Command #2
			WinActivate, Old School RuneScape
			MouseMove, 1508, 784,  20 
			MouseClick, left, 1508, 784 
			Sleep, 1000

			; Command #3
			WinActivate, Old School RuneScape
			MouseMove, 1482, 996,  20 
			MouseClick, left, 1482, 996 
			Sleep, 1000
		}

		; Command #4
		WinActivate, Old School RuneScape
		MouseMove, 1368, 488,  20 
		MouseClick, left, 1368, 488 
		Sleep, 1000

		; Command #5
		WinActivate, Old School RuneScape
		MouseMove, 602, 396,  20 
		MouseClick, left, 602, 396 
		Sleep, 1000

		; Command #6
		WinActivate, Old School RuneScape
		Sleep, 3000

		; Command #7
		WinActivate, Old School RuneScape
		MouseMove, 1326, 572,  20 
		MouseClick, right, 1326, 572 
		Sleep, 1000

		; Command #8
		WinActivate, Old School RuneScape
		MouseMove, 1302, 768,  20 
		MouseClick, left, 1302, 768 
		Sleep, 1000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 716, 240,  20 
		MouseClick, left, 716, 240 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 924, 666,  20 
		MouseClick, right, 924, 666 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		MouseMove, 884, 898,  20 
		MouseClick, left, 884, 898 
		Sleep, 1000

		; Command #12
		WinActivate, Old School RuneScape
		MouseMove, 1046, 166,  20 
		MouseClick, left, 1046, 166 
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
