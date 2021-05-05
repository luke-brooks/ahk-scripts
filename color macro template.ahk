
; used for setting up color detection
colorsToDetect := Object()
colorDetectCount := 0


F1::
	mapleMiniMap = ["0x804629"]
Return

F8::
	ClearArray(colorsToDetect)
	colorDetectCount := 0
	MsgBox, Arrays have been cleared!
Return


Escape::
	MsgBox, Goodbye!
	ExitApp
Return

HasVal(haystack, needle) {
	if !(IsObject(haystack)) || (haystack.Length() = 0){
		return 0
	}
	for index, value in haystack{
		if (value = needle){
			return index
		}
	}
	return 0
}

ClearArray(array)
{
	Loop % array.MaxIndex()
	{
		array.Delete(array.MaxIndex())
	}
}

ScanAreaForColors(colorsToDetect, xStart, yStart, xEnd, yEnd, byref outX, byref outY)
{
	; Square off area to scan
	MouseMove, xStart, yStart, mouseSpeed
	MouseMove, xStart, yEnd, mouseSpeed
	MouseMove, xEnd, yEnd, mouseSpeed
	MouseMove, xEnd, yStart, mouseSpeed
	MouseMove, xStart, yStart, mouseSpeed
	
	xUse := xStart
	yUse := yStart
	
	div := 40
	
	; determine the
	xAdd := (xEnd - xStart) / div
	yAdd := (yEnd - yStart) / div
	
	; determine the centermost coordinates for x and y axes
	if (xEnd < xStart)
	{
		xCenter := ((xStart - xEnd) / 2) + xEnd
	}
	else
	{
		xCenter := ((xEnd - xStart) / 2) + xStart
	}
	if (yEnd < yStart)
	{
		yCenter := ((yStart - yEnd) /2) + yEnd
	}
	else
	{
		yCenter := ((yEnd - yStart) / 2) + yStart
	}
	
	PixelGetColor, color, xCenter, yCenter, RGB
	
	if (HasVal(colorsToDetect, color) > 0)
	{
		outX := xCenter
		outY := yCenter
		Return 1
	}
	
	Loop, % div / 2
	{
		; command 1
		xUse := xCenter - (xAdd * A_Index)
		PixelGetColor, color, xUse, yCenter, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yCenter
			Return 1
		}

		
		; command 2
		yUse := yCenter + ((yAdd * A_Index) /2) ; 22.5 degree
		PixelGetColor, color, xUse, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse
			Return 1
		}

		
		; command 3
		yUse := yCenter + (yAdd * A_Index) ; 45 degree
		PixelGetColor, color, xUse, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse
			Return 1
		}
		

		; command 4
		yUse := yCenter + (yAdd * A_Index) ; 90 degree		
		PixelGetColor, color, % xUse - ((xUse - xCenter) / 2), yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse - ((xUse - xCenter) / 2)
			outY := yUse
			Return 1
		}
		

		; command 5
		yUse := yCenter + (yAdd * A_Index) ; 90 degree		
		PixelGetColor, color, xCenter, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xCenter
			outY := yUse
			Return 1
		}
		

		; command 6
		xUse := xCenter + (xAdd * A_Index)
		PixelGetColor, color, % xCenter + ((xUse - xCenter) / 2), yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xCenter + ((xUse - xCenter) / 2)
			outY := yUse
			Return 1
		}	
		

		; command 7
		PixelGetColor, color, xUse, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse
			Return 1
		}	
		

		; command 8
		PixelGetColor, color, xUse, % yCenter + ((yUse - yCenter) / 2), RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yCenter + ((yUse - yCenter) / 2)
			Return 1
		}	
		

		; command 9
		PixelGetColor, color, xUse, yCenter, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yCenter
			Return 1
		}	
		
		
		; command 10
		yUse := yCenter - (yAdd * A_Index)
		PixelGetColor, color, xUse, % yUse + ((yCenter - yUse) / 2), RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse + ((yCenter - yUse) / 2)
			Return 1
		}	
		

		; command 11
		PixelGetColor, color, xUse, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse
			Return 1
		}	
		

		; command 12
		PixelGetColor, color, % xCenter + ((xUse - xCenter) / 2), yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xCenter + ((xUse - xCenter) / 2)
			outY := yUse
			Return 1
		}	


		; command 13
		
		PixelGetColor, color, xCenter, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xCenter
			outY := yUse
			Return 1
		}	
		

		; command 14
		xUse := xCenter - (xAdd * A_Index)
		PixelGetColor, color, % xCenter - ((xCenter - xUse) / 2), yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xCenter - ((xCenter - xUse) / 2)
			outY := yUse
			Return 1
		}	
		

		; command 15
		PixelGetColor, color, xUse, yUse, RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse
			Return 1
		}	
		

		; command 16
		PixelGetColor, color, xUse, % yUse + ((yCenter - yUse) / 2), RGB
		if (HasVal(colorsToDetect, color) > 0)
		{
			outX := xUse
			outY := yUse + ((yCenter - yUse) / 2)
			Return 1
		}	
	}
	Return 0
}