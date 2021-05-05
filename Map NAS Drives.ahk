;This script will map my NAS networks drives automatically after verifying internet connection

logFile = D:\logs\NasDrive.log

FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Starting Internet Connectivity Check`n, %logFile%

Loop, 6 {
    internetConnectionStatus := checknet(x, logFile) ? true : false
    
    if (internetConnectionStatus){
        FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Internet connection verified!`n, %logFile%
        break
    }
    else {
        FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Internet connection failed`n, %logFile%
        Sleep, 5000
    }
}

if (internetConnectionStatus){
	FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Beginning to map network drives`n, %logFile%
	
	; Refresh drives to ensure credentials will be entered
	RunWait %comspec% /c net use M: /delete,,hide
	RunWait %comspec% /c net use P: /delete,,hide
	RunWait %comspec% /c net use S: /delete,,hide
	
	RunWait %comspec% /c net use M: \\172.16.0.114\media_share /user:root ghost3479 /PERSISTENT:YES,,hide
	RunWait %comspec% /c net use P: \\172.16.0.114\photo_backup_share /user:root ghost3479 /PERSISTENT:YES,,hide
	RunWait %comspec% /c net use S: \\172.16.0.114\doc_share /user:root ghost3479 /PERSISTENT:YES,,hide
	
	FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Network drives have been mapped!`n, %logFile%
}
else {
	FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Unable to map network drives`n, %logFile%
}

checknet(ByRef verb:="", ByRef logLocation:=""){
    FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Pinging google.com`n, %logLocation%
    
    RunWait %comspec% /c ping  google.com | clip,,hide
    
    regexmatch(gp := clipboard,"Lost = (\d+)",oVar1)
    
    FileAppend, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%: Pinging FreeNAS Server`n, %logLocation%
    
    RunWait %comspec% /c ping 172.16.0.114 | clip,,hide
    
    regexmatch(yp := clipboard,"Lost = (\d+)",oVar2)
    verb := gp "`n" yp
    
    ; be sure to empty clipboard here
    
    return ovar11 + ovar21 = 0 ? 1:0
}