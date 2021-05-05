
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