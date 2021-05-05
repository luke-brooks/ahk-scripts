
xCoords := Object()
yCoords := Object()
macroCommands := Object()
targetWindows := Object()
counter := 0
globalSleep := 50
globalMouseMove := 10

; Display welcome and instructions
Gui, Welcome: New, , Welcome
Gui, Add, Text,, Welcome to the Macro Builder!
Gui, Add, Text,, To get started you can: `n`t-Press F1 to configure Command Speeds`n`t-Press F2 to add a Command to the Command List`n`t-Press F3 to execute your Command List`n`t-Press F4 to view the current Command List`n`t-Press F5 to save your Command List into its own script`n`t-Press F7 to remove the last Command from the Command List`n`t-Press F8 to refresh the Command List and Speed Config
Gui, Add, Button, gClose w100 h30 , Close
Gui, Show

F1::
	InputBox, globalSleep, Global Sleep Time, `nThe current Global Sleep value is: %globalSleep%`n`nEnter Sleep Command Length in Milliseconds: , , , 160, , , , , 50
	InputBox, globalSleep, Global Mouse Move Speed, `nThe current Global Mouse Move speed is: %globalMouseMove%`n`nEnter Mouse Move Speed: , , , 160, , , , , 10
Return

F2::
	; Set macro command
	
	WinGetActiveTitle, title
	
	ActivateTargetProgram(title)
	
	MouseGetPos, myX, myY
	
	InputBox, command, Macro Command Info, `nEnter Command Type: , , , 160, , , , , left
	
	if (ErrorLevel != 1) ; Checks for Cancel or InputBox Close
	{	
		counter++
		targetWindows[counter] := title
		
		if (command = "left" or command = "right" or command = "double" or command = "move")
		{
			xCoords[counter] := myX
			yCoords[counter] := myY
			macroCommands[counter] := command
		}
		else if (command = "drag")
		{
			xCoords[counter] := myX
			yCoords[counter] := myY
			macroCommands[counter] := command
			
			MsgBox, Please place your mouse on the drag end location...
			
			Sleep, 3000
			
			counter++
			
			targetWindows[counter] := title
			ActivateTargetProgram(title)
			
			MouseGetPos, myX, myY
			
			xCoords[counter] := myX
			yCoords[counter] := myY
			macroCommands[counter] := "dragEnd"
			
			MsgBox, Second location is:  X = %myX%  Y = %myY%
		}
		else if (command = "keypress")
		{
			InputBox, keyCombo, Key Combination Info, `nEnter the sequence of keys you would like to macro.`nLegend:`n`tControl =  ^`n`tShift = +`n`tAlt = !`n`tWin = #`n`tLeft key = <`n`tRight key = >`n`tSpecific function key = Enclose in {}`n`t`t Ex: {left}`, {delete}, , , 330
			
			if (ErrorLevel != 1)
			{
				xCoords[counter] := keyCombo
				yCoords[counter] := 0
				macroCommands[counter] := command
			}
			else
			{
				targetWindows[counter] := ""
				counter--
			}
		}
		else if (command = "sleep")
		{
			InputBox, time, Sleep Command Info, `nEnter Sleep Command Length in Milliseconds: , , , 160, , , , , 1000
			
			xCoords[counter] := time
			yCoords[counter] := 0
			macroCommands[counter] := command
		}
		else
		{
			MsgBox, Command %command% not recognized. Please enter "left", "right", "drag",  "double", "keypress", "sleep" or "move" as the click command.
		}
	}
Return

F3::
	; Execute macro commands
	if (counter = 0)
	{
		MsgBox, No Commands have been established yet. Please use the F2 key to establish Commands.
	}
	else
	{
		Loop, %counter% {
			currentTargetWindow = targetWindows[A_Index]
		
			if (WinExist(currentTargetWindow)) {
				ActivateTargetProgram(currentTargetWindow)
				
				x := xCoords[A_Index]
				y := yCoords[A_Index]
				com := macroCommands[A_Index]
				
				if (com = "sleep")
				{
					Sleep, %x%
				}
				else if (com = "drag")
				{
					endX := xCoords[A_Index + 1]
					endY := yCoords[A_Index + 1]
					
					MouseClickDrag, left, x, y, endX, endY, %globalMouseMove%
					
					Sleep, globalSleep
				}
				else if (com = "dragEnd")
				{
					; do nothing for the ending drag command
				}
				else if (com = "keypress")
				{
					Send %x%
					Sleep, globalSleep
				}
				else
				{
					MouseMove, x, y, %globalMouseMove%
					
					if (com = "left"){
						MouseClick, left, x, y
					}
					if (com = "right"){
						MouseClick, right, x, y
					}
					if (com = "double"){
						MouseClick, left, x, y
						Sleep, 100
						MouseClick, left, x, y
					}
					
					Sleep, globalSleep
				}
			}
			else {
				MsgBox, %currentTargetWindow% is not currently available.
			}
		}
	}
Return

F4::
	; Display current macro list
	
	if (counter = 0)
	{
		MsgBox, No Commands have been established yet. Please use the F2 key to establish commands.
	}
	else
	{
		Gui, CommandInfo: New, , Command Info
		
		comCount := 0
		
		Loop, %counter%
		{
			x := xCoords[A_Index]
			y := yCoords[A_Index]
			com := macroCommands[A_Index]
			t := targetWindows[A_Index]
			
			if (com != "dragEnd") ; do nothing for the ending drag command
			{
				comCount++
			
				if (com = "sleep")
				{
					Gui, Add, Text,, Command #%A_Index%`n`tTarget Window: %t%`n`tCommand Type: %com%`n`tDuration: %x% milliseconds
				}
				else if (com = "drag")
				{
					endX := xCoords[A_Index + 1]
					endY := yCoords[A_Index + 1]
					
					Gui, Add, Text,, Command #%A_Index%`n`tTarget Window: %t%`n`tCommand Type: %com%`n`tStart Coordinates: X = %x%  Y = %y%`n`tEnd Coordinates: X = %endX%  Y = %endY%
				}
				else if (com = "keypress")
				{
					Gui, Add, Text,, Command #%A_Index%`n`tTarget Window: %t%`n`tCommand Type: %com%`n`tKey Combo: %x%
				}
				else
				{
					Gui, Add, Text,, Command #%A_Index%`n`tTarget Window: %t%`n`tCommand Type: %com%`n`tCommand Coordinates: X = %x%  Y = %y%
				}
			}
		}
		
		Gui, Add, Button, gClose w100 h30 , Close
		Gui, Show
	}
Return

F5::
	; Save macro to file
	
	if (counter = 0)
	{
		MsgBox, No Commands have been established yet. Please use the F2 key to establish commands.
	}
	else
	{
		FileSelectFolder, folder , , , Please select a folder to save your macro:
		
		if (ErrorLevel != 1)
		{
			InputBox, fileName, Save Macro, `nPlease enter a valid name for your macro file:, , , 160
			
			if (ErrorLevel != 1) ; Checks for Cancel or InputBox Close
			{
				FileAppend, globalSleep := 50`n, %folder%\%fileName%.ahk
				FileAppend, globalMouseMove := 10`n, %folder%\%fileName%.ahk
				
				FileAppend, `nMsgBox`, ``n``t-Press F6 to execute command sequence``n``t-Press Escape to close the macro`n, %folder%\%fileName%.ahk
				
				FileAppend, F6::`n, %folder%\%fileName%.ahk
				
				comCount := 0
				
				Loop, %counter% {
					x := xCoords[A_Index]
					y := yCoords[A_Index]
					com := macroCommands[A_Index]
					t := targetWindows[A_Index]
					
					if (com != "dragEnd") ; do nothing for the ending drag command
					{
						comCount++
						
						FileAppend, `n`t`; Command #%comCount%`n, %folder%\%fileName%.ahk
						FileAppend, `tWinActivate`, %t%`n, %folder%\%fileName%.ahk
						
						if (com = "sleep")
						{
							FileAppend,	`tSleep`, %x%`n, %folder%\%fileName%.ahk
						}
						else if (com = "drag")
						{
							endX := xCoords[A_Index + 1]
							endY := yCoords[A_Index + 1]
							
							FileAppend,	`tMouseClickDrag`, left`, %x%`, %y%`, %endX%`, %endY%`, globalMouseMove `n, %folder%\%fileName%.ahk
							
							FileAppend,	`tSleep`, globalSleep`n, %folder%\%fileName%.ahk
						}
						else if (com = "keypress")
						{
							FileAppend,	`tSend`, %x%`n, %folder%\%fileName%.ahk
							
							FileAppend,	`tSleep`, globalSleep`n, %folder%\%fileName%.ahk
						}
						else
						{
							FileAppend,	`tMouseMove`, %x%`, %y%`,  globalMouseMove `n, %folder%\%fileName%.ahk
							
							if (com = "left" or com = "right"){
								FileAppend,	`tMouseClick`, %com%`, %x%`, %y% `n, %folder%\%fileName%.ahk
								
								FileAppend,	`tSleep`, globalSleep`n, %folder%\%fileName%.ahk
							}
							if (com = "double"){
								FileAppend,	`tMouseClick`, left`, %x%`, %y%`n, %folder%\%fileName%.ahk
								
								FileAppend,	`tSleep`, 100`n, %folder%\%fileName%.ahk
								
								FileAppend,	`tMouseClick`, left`, %x%`, %y%`n, %folder%\%fileName%.ahk
								
								FileAppend,	`tSleep`, globalSleep`n, %folder%\%fileName%.ahk
							}
						}
					}
				}
				
				FileAppend, Return`n`n, %folder%\%fileName%.ahk
				
				FileAppend, `nEscape::`n, %folder%\%fileName%.ahk
				FileAppend, `tMsgBox`, Goodbye!`n, %folder%\%fileName%.ahk
				FileAppend, `tExitApp`n, %folder%\%fileName%.ahk
				FileAppend, Return`n, %folder%\%fileName%.ahk
			}
		}
	}
Return

F7::
	InputBox, decision, Remove Last Item, `nAre you sure you want to remove the last item? (yes or no): , , , 160, , , , , yes
	
	if (ErrorLevel != 1) ; Checks for Cancel or InputBox Close
	{
		if (decision = "yes")
		{
			xCoords[counter] := 
			yCoords[counter] := 
			macroCommands[counter] := 
			targetWindows[counter] :=
			
			counter-- 
		}
	}
		
Return

F8::
	InputBox, decision, Clear Command List, `nAre you sure you want to clear the Command List and reset the Command Speed settings? (yes or no): , , , 160, , , , , yes
	
	if (ErrorLevel != 1) ; Checks for Cancel or InputBox Close
	{
		if (decision = "yes")
		{
			; Reset global variables
			ClearArray(xCoods)
			ClearArray(yCoords)
			ClearArray(macroCommands)
			ClearArray(targetWindows)
			counter := 0
			globalSleep := 50
			globalMouseMove := 10
			
			MsgBox, The Command List has been cleared and the Command Speed settings were reset!
		}
	}
	
Return

Escape::
	MsgBox, Goodbye!
	ExitApp
Return

ActivateTargetProgram(title)
{
	WinActivate, %title%
}

ClearArray(array)
{
	Loop % array.MaxIndex()
	{
		array.Delete(array.MaxIndex())
	}
}

Close:
{
	Gui Destroy
}