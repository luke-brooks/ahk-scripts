
InputBox, hours, Mouse Jiggle , Enter the amount of time in HOURS you would like Mouse Jiggle to run: , , , , , , , , 5 

numOfLoops = 0

if hours is integer 
{
	numOfLoops = % hours*12
	Msgbox, Mouse Jiggle will run for %hours% hours
}
else 
{
	numOfLoops = % 5*12
	Msgbox, Mouse Jiggle will run for 5 hours
}

min = 5 ;Number of minutes to wait before jiggle

loop, %numOfLoops% {
	sleep, % min*60*1000
    mousemove, 10, 0, 20, R
    mousemove, -10, 0, 20, R
}
