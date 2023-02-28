$connectTestResult = Test-NetConnection -ComputerName cs4bc62002e2f25x4d7fx813.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"cs4bc62002e2f25x4d7fx813.file.core.windows.net`" /user:`"Azure\cs4bc62002e2f25x4d7fx813`" /pass:`"CTxbmKkXaqrpCbyftetMRNKROTrgKNi027uMqS70mcasPfuofCa1LSvMpwLYXPFcGCjsrJZd1QXbAp2e7mWO6g==`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\cs4bc62002e2f25x4d7fx813.file.core.windows.net\cs-william-stahlhut-outlook-com-10037ffe86c390ea"-Persist
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}