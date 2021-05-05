F6::

	InputBox, loopNum, Loop Info, Enter the number of times to loop:
	
	count = 0
	
	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1332, 366,  20 
		MouseClick, left, 1332, 366 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		Sleep, 8000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 488, 646,  20 
		MouseClick, left, 488, 646 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		Sleep, 3000

		; Command #5
		WinActivate, Old School RuneScape
		MouseMove, 1358, 240,  20 
		MouseClick, left, 1358, 240 
		Sleep, 1000

		; Command #6
		WinActivate, Old School RuneScape
		Sleep, 6000

		; Command #7
		WinActivate, Old School RuneScape
		MouseMove, 718, 454,  20 
		MouseClick, left, 718, 454 
		Sleep, 1000

		; Command #8
		WinActivate, Old School RuneScape
		Sleep, 2000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 786, 618,  20 
		MouseClick, left, 786, 618 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		Sleep, 3000

		; Command #11
		WinActivate, Old School RuneScape
		MouseMove, 1036, 852,  20 
		MouseClick, left, 1036, 852 
		Sleep, 1000

		; Command #12
		WinActivate, Old School RuneScape
		MouseMove, 460, 972,  20 
		MouseClick, left, 460, 972 
		Sleep, 1000

		; Command #13
		WinActivate, Old School RuneScape
		Sleep, 50000

		; Command #14
		WinActivate, Old School RuneScape
		MouseMove, 1332, 314,  20 
		MouseClick, left, 1332, 314 
		Sleep, 1000

		; Command #15
		WinActivate, Old School RuneScape
		Sleep, 7000

		; Command #16
		WinActivate, Old School RuneScape
		MouseMove, 448, 586,  20 
		MouseClick, right, 448, 586 
		Sleep, 1000

		; Command #17
		WinActivate, Old School RuneScape
		MouseMove, 440, 662,  20 
		MouseClick, left, 440, 662 
		Sleep, 1000

		; Command #18
		WinActivate, Old School RuneScape
		Sleep, 3000

		; Command #19
		WinActivate, Old School RuneScape
		MouseMove, 1384, 206,  20 
		MouseClick, left, 1384, 206 
		Sleep, 1000

		; Command #20
		WinActivate, Old School RuneScape
		Sleep, 8000

		; Command #21
		WinActivate, Old School RuneScape
		MouseMove, 696, 258,  20 
		MouseClick, left, 696, 258 
		Sleep, 1000

		; Command #22
		WinActivate, Old School RuneScape
		Sleep, 5000

		; Command #23
		WinActivate, Old School RuneScape
		MouseMove, 718, 238,  20 
		MouseClick, left, 718, 238 
		Sleep, 1000

		; Command #24
		WinActivate, Old School RuneScape
		MouseMove, 962, 744,  20 
		MouseClick, left, 962, 744 
		Sleep, 1000

		; Command #25
		WinActivate, Old School RuneScape
		MouseMove, 730, 596,  20 
		MouseClick, right, 730, 596 
		Sleep, 1000

		; Command #26
		WinActivate, Old School RuneScape
		MouseMove, 706, 832,  20 
		MouseClick, left, 706, 832 
		Sleep, 1000
	
		count++
	}
	MsgBox, Loop executed %count% times!
Return


Escape::
	
	MsgBox, Loop executed %count% times!
	MsgBox, Goodbye!
	ExitApp
Return
