
min = 15 ;Number of minutes to wait before changing background
SetBackground()
loop, 5000 {
	sleep, % min*60*1000
	SetBackground()
}

SetBackground()
{
	    location := "C:\Users\lbk\Pictures\backgrounds\" ; Change this to your background folder
	    extension := .jpg

	    count := 0
	    Loop, %location%\*.*, 1, 1 
	       count += 1

	    filenum := 1
	    Random, filenum, 1, %count%

	    address = %location%%filenum%%extension%
	    SetWallpaper(address)
}


SetWallpaper(BMPpath) 
{
	SPI_SETDESKWALLPAPER := 20
	SPIF_SENDWININICHANGE := 2  
	Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
}