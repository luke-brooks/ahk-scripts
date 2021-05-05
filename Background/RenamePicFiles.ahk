
location := "C:\Users\lbk\Pictures\backgrounds\"
list_files(location)

list_files(Directory)
{
	backup := "C:\Users\lbk\Pictures\bgbackup\"
	temp := "C:\Users\lbk\Pictures\temp\"
	
	; Copy all files to the Back Up directory
	Loop %Directory%\*.*
	{
		; Back up the files that are being renamed
		backupAddr = %backup%%A_LoopFileName%
		tempAddr = %temp%%A_LoopFileName%
		FileCopy, %Directory%%A_LoopFileName%, %backupAddr%, 1
		
		; Copy current file to temp directory
		FileCopy, %Directory%%A_LoopFileName%, %tempAddr%, 1
		
		; Remove copied file from original directory
		FileDelete, %Directory%%A_LoopFileName%
	}
	
	count := 1
	; Copy files from the Back Up directory to the original directory and rename them in the process
	Loop %temp%\*.*
	{
	    extension := .jpg
		newFileName = %Directory%%count%%extension%
		; msgbox, %newFileName%
		; Rename files
		FileCopy, %temp%%A_LoopFileName%, %newFileName%, 1
	    
		; Remove from Temp folder
		FileDelete, %temp%%A_LoopFileName%
		
		count += 1
	}
}