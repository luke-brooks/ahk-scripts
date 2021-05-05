mouseSpeed := 3
delay := 50

^W::
	; Open Prayer Menu
	WinActivate, Old School RuneScape
	MouseMove, 742, 217,  mouseSpeed
	MouseClick, left, 742, 217 
	Sleep, delay
	
	; Protect from Magic
	WinActivate, Old School RuneScape
	MouseMove, 637, 375,  mouseSpeed
	MouseClick, left, 637, 375 
	Sleep, delay
Return

^R::
	; Open Prayer Menu
	WinActivate, Old School RuneScape
	MouseMove, 742, 217,  mouseSpeed
	MouseClick, left, 742, 217 
	Sleep, delay
	
	; Protect from Ranged
	WinActivate, Old School RuneScape
	MouseMove, 676, 372,  mouseSpeed
	MouseClick, left, 676, 372 
	Sleep, delay
	
Return

^A::
	; Open Prayer Menu
	WinActivate, Old School RuneScape
	MouseMove, 742, 217,  mouseSpeed
	MouseClick, left, 742, 217 
	Sleep, delay
	
	
	; Protect from Melee
	WinActivate, Old School RuneScape
	MouseMove, 712, 375,  mouseSpeed
	MouseClick, left, 712, 375 
	Sleep, delay
Return

^P::
	; Open Prayer Menu
	WinActivate, Old School RuneScape
	MouseMove, 742, 217,  mouseSpeed
	MouseClick, left, 742, 217 
	Sleep, delay
	
	; Protect Extra Item
	WinActivate, Old School RuneScape
	MouseMove, 603, 334,  mouseSpeed
	MouseClick, left, 603, 334 
	Sleep, delay
Return

^Q::
	; Open Magic Menu
	WinActivate, Old School RuneScape
	MouseMove, 773, 218,  mouseSpeed
	MouseClick, left, 773, 218 
	Sleep, delay
	
	; Varrock Teleport
	WinActivate, Old School RuneScape
	MouseMove, 629, 311,  mouseSpeed
	MouseClick, left, 629, 311 
	Sleep, delay
Return

^S::
	; Open Melee Menu
	WinActivate, Old School RuneScape
	MouseMove, 575, 215,  mouseSpeed
	MouseClick, left, 575, 215 
	Sleep, delay

	; Special Attack
	WinActivate, Old School RuneScape
	MouseMove, 662, 453,  mouseSpeed
	MouseClick, left, 662, 453 
	Sleep, delay
Return

F6::
		; Open Melee Menu
		WinActivate, Old School RuneScape
		MouseMove, 575, 215,  20 
		MouseClick, left, 575, 215 
		Sleep, 1000

		; Special Attack
		WinActivate, Old School RuneScape
		MouseMove, 662, 453,  20 
		MouseClick, left, 662, 453 
		Sleep, 1000
		
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

		; Open Prayer Menu
		WinActivate, Old School RuneScape
		MouseMove, 742, 217,  20 
		MouseClick, left, 742, 217 
		Sleep, 1000

		; Protect from Magic
		WinActivate, Old School RuneScape
		MouseMove, 637, 375,  20 
		MouseClick, left, 637, 375 
		Sleep, 1000

		; Protect from Ranged
		WinActivate, Old School RuneScape
		MouseMove, 676, 372,  20 
		MouseClick, left, 676, 372 
		Sleep, 1000

		; Protect from Melee
		WinActivate, Old School RuneScape
		MouseMove, 712, 375,  20 
		MouseClick, left, 712, 375 
		Sleep, 1000

		; Protect Extra Item
		WinActivate, Old School RuneScape
		MouseMove, 603, 334,  20 
		MouseClick, left, 603, 334 
		Sleep, 1000
Return


Escape::
	MsgBox, Goodbye!

	ExitApp
Return
