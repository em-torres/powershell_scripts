# As for this example, the $code variable saves the command to run as administrator

Set-ExecutionPolicy Unrestricted

$code = {   
    Copy-item -path "" -destination "" -recurse -force
}

Start-Process -FilePath powershell.exe -ArgumentList $code -verb RunAs -WorkingDirectory C:    # Elevate an Admin Powershell to run the commands in the variable

Set-ExecutionPolicy AllSigned
pause