
#persistent
coordmode, mouse, screen

mousegetpos, sx, sy

settimer, check, 150000
return

check:
mousegetpos, cx, cy

if (cx = sx or cy = sy)
{
	mousemove, 20, 0, 20, R
	mousemove, 0, -20, 20, R
	mousemove, -20, 0, 20, R
	
	mousemove, 0, 40, 20, R
	
	mousemove, -20, 0, 20, R
	mousemove, 0, -20, 20, R
	mousemove, 20, 0, 20, R
}      

mousegetpos, sx, sy ; get new mouse position
return