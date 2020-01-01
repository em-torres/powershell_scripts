# As for this example, the $code variable saves the command to run as administrator

$code = {
    Disable-NetAdapter E* -Confirm:$false   # Command to turn down the network
    Enable-NetAdapter E* -Confirm:$false    # Command to enable the newtwork
}

Start-Process -FilePath powershell.exe -ArgumentList $code -verb RunAs -WorkingDirectory C:     # Elevate an Admin Powershell to run the commands in the variable
PAUSE
