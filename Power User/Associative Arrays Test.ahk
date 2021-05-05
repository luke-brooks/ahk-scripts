


	;Sayings
	friendly := ["hello there!", "Howdy!", "Greetings friend!", "hi there"]
	helpful := ["x next to y and z", "this is helpful", "The sky is blue"]
	other := ["where is my toaster", "do it", "just"]

	;Categories
	welcome := [friendly, helpful, other]
	
	Numpad0::
		intotext(randomfromarray("friendly"),50,35,15)
		return

	Numpad1::
		intotext(randomfromarray("helpful"),50,35,15)
		return

	Numpad2::
		Random, randNumOne, 1, welcome.MaxIndex()

		MsgBox % "Your random number is for array is: " . randNumOne

		randArray := welcome[randNumOne]

		Random, randNumTwo, 1, randArray.MaxIndex()

		MsgBox %  "Your random Saying is " . randArray[randNumTwo]
		return
	
	intotext(whatisit,thekeydelay,introwait,outrowait)
	{
		SetKeyDelay, thekeydelayt
		Send, t
		Sleep, %introwait%  
		Send, %whatisit% 
		Sleep, %outrowait%
		Send, {enter}
	}

	randomfromarray(array)
	{
		Random, rand, 1, array.MaxIndex()
		
		return array[rand]
	}

;random(x, y){
;   Random, var, %x%, %y%
;   return var
;}

;array := {1: "title1", 2: "title2", 3: "title3", 4: "title4"}
;;array := Object()
;
;maxCounter := array.MaxIndex()
;
;MsgBox % maxCounter
;
;Loop
;{
;	For key, value in array 
;	{
;		MsgBox % array[maxCounter]
;		MsgBox % array.Delete(maxCounter)
;		MsgBox % array[maxCounter]
;		maxCounter--
;	}
;	
;	maxCounter := array.MaxIndex()
;	
;	if (%maxCounter% == 0)
;	{
;		MsgBox, Exiting Program
;		break
;	}
;}
;
;return

;MsgBox % maxCounter
;
;For key, value in array {
;    MsgBox %key% = %value%
;}

;array[11] := "title11"
;array[4] := "title4"
;array[111] := "title111"


;For key, value in array {
;    MsgBox %key% = %value%
;}
;

;msgbox, %array[1]%

;counter := array.MaxIndex()
;
;Loop, % array.MaxIndex()
;{
;	MsgBox, % array[(counter)]
;	counter--
;}

;Sort, array, F ReverseDirection D,  ; Reverses the list so that it contains 4,3,2,1

	
;
;For key, value in array {
;    MsgBox %key% = %value%
;	}
;	

;ReverseDirection(a1, a2, offset)
;{
;	msgbox, hello there
;    return offset  ; Offset is positive if a2 came after a1 in the original list; negative otherwise.
;}