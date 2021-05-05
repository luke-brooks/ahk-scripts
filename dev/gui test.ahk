
#persistent
coordmode, mouse, screen

mousegetpos, sx, sy

settimer, check, 300000
return

check:
mousegetpos, cx, cy

if (cx = sx or cy = sy)
{
	mousemove, 40, 0, 20, R
	mousemove, 0, 40, 20, R
	mousemove, -40, 0, 20, R
	mousemove, 0, -40, 20, R
}      

mousegetpos, sx, sy ; get new mouse position
return

;InputBox, hours, Mouse Jiggle , Enter the amount of time in HOURS you would like Mouse Jiggle to run: , , , , , , , , 5 
;
;numOfLoops = 0
;
;if hours is integer 
;{
;	numOfLoops = % hours*12
;	Msgbox, Mouse Jiggle will run for %hours% hours
;}
;else 
;{
;	numOfLoops = % 5*12
;	Msgbox, Mouse Jiggle will run for 5 hours
;}
;
;min = 5 ;Number of minutes to wait before jiggle
;count = 1
;
;loop, %numOfLoops% {
;	sleep, % min*60*1000
;    mousemove, 10, 0, 20, R
;    mousemove, -10, 0, 20, R
;	Msgbox, %count%
;	count++
;}








;InputBox, hours, Mouse Jiggle , Enter the amount of time in HOURS you would like Mouse Jiggle to run: , , , , , , , , 5 
;msgbox, Mouse Jiggle will run for %hours% hours
;Gui, MouseJiggle: New, , Mouse Jiggle
;Gui, Add, Text,, Enter the amount of time in hours that you would like the Mouse Jiggle script to run:
;Gui, Add, Edit, vName
;Gui, Add, Button, x10 y72 w100 h30 , 1 Hour
;Gui, Add, Button, x122 y72 w100 h30 , 2 Hours
;Gui, Add, Button, x234 y72 w100 h30 , 3 Hours
;Gui, Add, Button, x346 y72 w100 h30 , 4 Hours 
;Gui, Add, Button, x458 y72 w100 h30 , 5 Hours
;Gui, Add, Button, x570 y72 w100 h30 , 6 Hours
;Gui, Show
;Rtm

;GuiClose:
;ExitApp