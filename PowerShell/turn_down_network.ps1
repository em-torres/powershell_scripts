# As for this example, the $code variable saves the command to run as administrator

$code = {
    # To Remove the UAC //this script must be run with admin rights//
    Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdmin -Value 0

    Disable-NetAdapter E* -Confirm:$false   # Command to turn down the network
    Enable-NetAdapter E* -Confirm:$false    # Command to enable the newtwork

}
$turn_down_ethernet_network = {
    Disable-NetAdapter E* -Confirm:$false
}

Start-Process -FilePath powershell.exe -ArgumentList $turn_down_ethernet_network -verb RunAs -WorkingDirectory C:    # Elevate an Admin Powershell to run the commands in the variable
