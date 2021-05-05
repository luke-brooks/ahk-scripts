
;Sayings
friendly := [hello there!, Howdy!, Greetings friend!, hi there]
helpful := [x next to y and z, this is helpful, The sky is blue]
other := [where is my toaster, do it, just]

;Categories
welcome := [%friendly%, %helpful%, %other%]

;intotext(randomfromarray("helpful"),50,35,15)

msgbox % random(1, welcome.maxindex() )

intotext(whatisit,thekeydelay,introwait,outrowait)
{
    SetKeyDelay, thekeydelay
    Send, t
    Sleep, %introwait%  
    Send, %whatisit% 
    Sleep, %outrowait%
    Send, {enter}
}

randomfromarray(uniquepickof){
    return %uniquepickof%[random(1, %uniquepickof%.maxindex() )]
}

random(x, y){
   Random, var, %x%, %y%
   return var
}

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