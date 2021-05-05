F6::


	InputBox, loopNum, Loop Info, Enter the number of times to loop:

	count = 0

	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 478, 244,  20 
		MouseClick, left, 478, 244 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		MouseMove, 730, 530,  20 
		MouseClick, right, 730, 530 
		Sleep, 1000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 690, 756,  20 
		MouseClick, left, 690, 756 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		MouseMove, 1420, 280,  20 
		MouseClick, left, 1420, 280 
		Sleep, 1000

		; Command #5
		WinActivate, Old School RuneScape
		Sleep, 10000

		; Command #6
		WinActivate, Old School RuneScape
		MouseMove, 1230, 572,  20 
		MouseClick, left, 1230, 572 
		Sleep, 1000

		; Command #7
		WinActivate, Old School RuneScape
		MouseMove, 686, 324,  20 
		MouseClick, left, 686, 324 
		Sleep, 1000

		; Command #8
		WinActivate, Old School RuneScape
		Sleep, 2500

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 1040, 838,  20 
		MouseClick, left, 1040, 838 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 600, 990,  20 
		MouseClick, left, 600, 990 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		Sleep, 65000

		; Command #12
		WinActivate, Old School RuneScape
		MouseMove, 1296, 308,  20 
		MouseClick, left, 1296, 308 
		Sleep, 1000

		; Command #13
		WinActivate, Old School RuneScape
		Sleep, 10000

		; Command #14
		WinActivate, Old School RuneScape
		MouseMove, 588, 354,  20 
		MouseClick, left, 588, 354 
		Sleep, 1000

		; Command #15
		WinActivate, Old School RuneScape
		Sleep, 5000

		; Command #16
		WinActivate, Old School RuneScape
		MouseMove, 480, 238,  20 
		MouseClick, left, 480, 238 
		Sleep, 1000

		; Command #17
		WinActivate, Old School RuneScape
		MouseMove, 966, 748,  20 
		MouseClick, left, 966, 748 
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
