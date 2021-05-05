
F6::
	loops = 30
	count = 0

	loop, %loops%{
		numOfRows = 7
		y = 260
		
		loop, %numOfRows% {
			numOfColumns = 4
			; firstCol = 610
			x = 610
			
			loop, %numOfColumns% {
				
				mousemove, %x%, %y%, 20
				mouseclick left, %x%, %y%
				
				clickHome()
				
				sleep, 2700
				
				x := x + 43
			}
			
			y := y + 37
		}
		
		clickDueEastMiniMap()
		
		sleep, 8000
		
		clickIntoBank()
		
		sleep, 4000
		
		clickOnBanker()
		
		sleep, 6000
		
		withdrawFullInventory()
		
		sleep, 2000
		
		clickStartPositionMiniMap()
		
		sleep, 6000
		
		count += 1
	}
	
	Msgbox, Ran %count% times!!
Return

Escape::
	Msgbox, Ran %count% times!!`n`nGoodbye!
	ExitApp
Return

	;mousemove, 295, 280, 20
	;mouseclick left, 295, 280
	
	; center of mini map is 
		;x = 674
		;y = 107
	; due east on mini map
		;x = 739
		;y = 115
		
	

clickHome()
{
	mousemove, 610, 260, 20
	mouseclick left, 610, 260
}

clickDueEastMiniMap(){
	x = 739
	y = 115
	mousemove, x, y, 20
	mouseclick left, x, y
}

clickIntoBank(){
	x = 690
	y = 83
	mousemove, x, y, 20
	mouseclick left, x, y
}

clickOnBanker(){
	x = 350
	y = 135
	mousemove, x, y, 20
	mouseclick left, x, y
}

withdrawFullInventory(){
	x = 410
	y = 165
	mousemove, x, y, 20
	mouseclick right, x, y
	
	x = 410
	y = 265
	mousemove, x, y, 20
	mouseclick left, x, y
}

clickStartPositionMiniMap(){
	x = 700
	y = 150
	mousemove, x, y, 20
	mouseclick left, x, y
}