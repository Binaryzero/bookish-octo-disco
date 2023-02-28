##Set IP of your PiHole Here
$DNSSERVER = "10.0.0.178"
 
##Set IP of your bypass DNS Here
$BYPASSDNS = "8.8.8.8"
 
##Set how long to bypass PiHole in seconds
$STIME = "300"
 
##This part of the code limits the time the script window stays visible
$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)
 
##Get your interface where pihole DNS is in use
$iindex = Get-DnsClientServerAddress | where-object serveraddresses -eq $DNSSERVER | select-object -ExpandProperty interfaceindex
 
##Set your network to bypass
set-dnsclientserveraddress -InterfaceIndex $iindex -ServerAddresses $BYPASSDNS
 
##Wait time defined above
sleep $STIME
 
##Set your network back to default
Set-DnsClientServerAddress -InterfaceIndex $iindex -ResetServerAddresses
 
##Set your network back to PiHole DNS - Uncomment the next line if you static define your DNS
## Set-DnsClientServerAddress -InterfaceIndex $iindex -ServerAddresses $DNSSERVER