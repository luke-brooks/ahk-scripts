
source := "C:\Users\lbk\Pictures\my photos\"
destination := "C:\Users\lbk\Pictures\backgrounds\"

move_files(source, destination)

move_files(Source, Destination)
{
	; Delete Destination directory and all files in it
	FileRemoveDir, %Destination%, 1
	
	; Recreate Destination directory
	FileCreateDir, %Destination%
	
	count := 1
	; Copy files from the Source directory to the Destination directory and rename them in the process
	Loop %Source%\*.*
	{
		; Get file info
		fullFileName = %Source%%A_LoopFileName%
		SplitPath, fullFileName, filename,, extension
		
		newFileName = %Destination%%count%.%extension%
		
		; Rename files
		FileCopy, %fullFileName%, %newFileName%, 1
		
		count += 1
	}
}