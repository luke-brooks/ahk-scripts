F6::

	InputBox, loopNum, Loop Info, Enter the number of times to loop:
	
	count = 0
	
	Loop, %loopNum%
	{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 1232, 576,  20 
		MouseClick, left, 1232, 576 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		MouseMove, 1320, 580,  20 
		MouseClick, left, 1320, 580 
		Sleep, 1000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 1038, 852,  20 
		MouseClick, left, 1038, 852 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		MouseMove, 602, 984,  20 
		MouseClick, left, 602, 984 
		Sleep, 1000

		; Command #5
		WinActivate, Old School RuneScape
		Sleep, 53000

		; Command #6
		WinActivate, Old School RuneScape
		MouseMove, 566, 454,  20 
		MouseClick, left, 566, 454 
		Sleep, 1000

		; Command #7
		WinActivate, Old School RuneScape
		Sleep, 3500

		; Command #8
		WinActivate, Old School RuneScape
		MouseMove, 720, 236,  20 
		MouseClick, left, 720, 236 
		Sleep, 1000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 1326, 568,  20 
		MouseClick, right, 1326, 568 
		Sleep, 1000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 1296, 766,  20 
		MouseClick, left, 1296, 766 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		MouseMove, 540, 654,  20 
		MouseClick, right, 540, 654 
		Sleep, 1000

		; Command #12
		WinActivate, Old School RuneScape
		MouseMove, 522, 882,  20 
		MouseClick, left, 522, 882 
		Sleep, 1000

		; Command #13
		WinActivate, Old School RuneScape
		MouseMove, 1048, 172,  20 
		MouseClick, left, 1048, 172 
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
