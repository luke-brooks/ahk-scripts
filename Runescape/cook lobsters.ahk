F6::
	InputBox, loopNum, Loop Info, Enter the number of times to loop:
	
	count = 0
	
	Loop, %loopNum%{
		; Command #1
		WinActivate, Old School RuneScape
		MouseMove, 289, 163,  20 
		MouseClick, left, 289, 163 
		Sleep, 1000

		; Command #2
		WinActivate, Old School RuneScape
		Sleep, 5000

		; Command #3
		WinActivate, Old School RuneScape
		MouseMove, 234, 91,  20 
		MouseClick, left, 234, 91 
		Sleep, 1000

		; Command #4
		WinActivate, Old School RuneScape
		MouseMove, 311, 238,  20 
		MouseClick, right, 311, 238 
		Sleep, 1000

		; Command #5
		WinActivate, Old School RuneScape
		MouseMove, 286, 358,  20 
		MouseClick, left, 286, 358 
		Sleep, 1000

		; Command #6
		WinActivate, Old School RuneScape
		MouseMove, 704, 118,  20 
		MouseClick, left, 704, 118 
		Sleep, 1000

		; Command #7
		WinActivate, Old School RuneScape
		Sleep, 6000

		; Command #8
		WinActivate, Old School RuneScape
		MouseMove, 611, 261,  20 
		MouseClick, left, 611, 261 
		Sleep, 1000

		; Command #9
		WinActivate, Old School RuneScape
		MouseMove, 359, 95,  20 
		MouseClick, left, 359, 95 
		Sleep, 5000

		; Command #10
		WinActivate, Old School RuneScape
		MouseMove, 517, 401,  20 
		MouseClick, left, 517, 401 
		Sleep, 1000

		; Command #11
		WinActivate, Old School RuneScape
		MouseMove, 293, 453,  20 
		MouseClick, left, 293, 453 
		Sleep, 1000

		; Command #12
		WinActivate, Old School RuneScape
		Sleep, 70000

		; Command #13
		WinActivate, Old School RuneScape
		MouseMove, 641, 120,  20 
		MouseClick, left, 641, 120 
		Sleep, 1000

		; Command #14
		WinActivate, Old School RuneScape
		Sleep, 6000

		; Command #15
		WinActivate, Old School RuneScape
		MouseMove, 293, 170,  20 
		MouseClick, left, 293, 170 
		Sleep, 1000

		; Command #16
		WinActivate, Old School RuneScape
		Sleep, 5000

		; Command #17
		WinActivate, Old School RuneScape
		MouseMove, 233, 94,  20 
		MouseClick, left, 233, 94 
		Sleep, 1000

		; Command #18
		WinActivate, Old School RuneScape
		MouseMove, 475, 344,  20 
		MouseClick, left, 475, 344 
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
