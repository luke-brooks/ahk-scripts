; This file contains all of my AHK Scripts that exclusively use HotKeys
; Hot Strings can be found at the bottom of the file

; ManualBackgroundChange.ahk start
F6::
	SetBackground()
Return

F7::
	SetWallpaper("C:\Windows\Web\Wallpaper\GHP_BM.BMP") 
Return
	
SetBackground()
{
	    location := "C:\Users\lbk\Pictures\backgrounds\" ; Change this to your background folder
		
		fileNames := Object()
	    count := 0
	    Loop, %location%\*.*
		{
			currentFile = %A_LoopFileName%
			fileNames.Insert(currentFile)
			count += 1
		}

	    filenum := 1
	    Random, filenum, 1, %count%
		
		randFile := fileNames[filenum]

	    bgLocation = %location%%randFile%
		
	    SetWallpaper(bgLocation)
}


SetWallpaper(BMPpath) 
{
	SPI_SETDESKWALLPAPER := 20
	SPIF_SENDWININICHANGE := 2  
	Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
}
; ManualBackgroundChange.ahk end


; AlwaysOnTop.ahk start
^SPACE::  Winset, Alwaysontop, , A
; AlwaysOnTop.ahk end


; Window Dig.ahk start
;windowTitles := Object()
;
;+F1::	
;	CoordMode, Mouse, Screen
;	Sleep, 100
;	counter = 1
;	
;	MouseGetPos, steadyX, steadyY
;	
;	ClearArray(windowTitles)
;	
;	Loop
;	{
;		Sleep, 100
;		MouseClick, left, steadyX, steadyY
;		
;		WinGetTitle, Title, A
;		
;		if (Title = "Program Manager")
;		{
;			break
;		}
;		else 
;		{
;			if (Even(counter))
;			{
;				Send #+{Left}
;			}
;			else 
;			{
;				Send #+{Right}
;			}
;			
;			windowTitles[(counter)] := Title
;		}
;		
;		counter++
;	}
;Return
;
;!F1::
;	Sleep, 100
;	
;	counter := windowTitles.MaxIndex()
;
;	Loop, % windowTitles.MaxIndex()
;	{
;		Sleep, 100
;		currentTitle := windowTitles[(counter)]
;		
;		WinActivate, %currentTitle%
;		
;		if (Even(counter))
;		{
;			Send #+{Right}
;		}
;		else 
;		{
;			Send #+{Left}
;		}
;		
;		counter--
;	}
;	
;	ClearArray(windowTitles)
;Return
;
;Even(n)
;{
;    return mod(n, 2) = 0
;}
;
;ClearArray(array)
;{
;	Loop % array.MaxIndex()
;	{
;		array.Delete(array.MaxIndex())
;	}
;}
; Window Dig.ahk end


; My Hot Strings start

::gthp::GatewayHealthPlan

::gpe::LBrooks@GatewayHealthPlan.com

; My Hot String end