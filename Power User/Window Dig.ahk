
windowTitles := Object()

+F1::	
	CoordMode, Mouse, Screen
	Sleep, 100
	counter = 1
	
	MouseGetPos, steadyX, steadyY
	
	ClearArray(windowTitles)
	
	Loop
	{
		Sleep, 100
		MouseClick, left, steadyX, steadyY
		
		WinGetTitle, Title, A
		
		if (Title = "Program Manager")
		{
			break
		}
		else 
		{
			if (Even(counter))
			{
				Send #+{Left}
			}
			else 
			{
				Send #+{Right}
			}
			
			windowTitles[(counter)] := Title
		}
		
		counter++
	}
Return

^F1::
	Sleep, 100
	
	counter := windowTitles.MaxIndex()

	Loop, % windowTitles.MaxIndex()
	{
		Sleep, 100
		currentTitle := windowTitles[(counter)]
		
		WinActivate, %currentTitle%
		
		if (Even(counter))
		{
			Send #+{Right}
		}
		else 
		{
			Send #+{Left}
		}
		
		counter--
	}
	
	ClearArray(windowTitles)
Return

Even(n)
{
    return mod(n, 2) = 0
}

ClearArray(array)
{
	Loop % array.MaxIndex()
	{
		array.Delete(array.MaxIndex())
	}
}