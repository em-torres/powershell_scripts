SET adapter_name=Ethernet
SET cp_path=""
SET cp_route=""

NETSH interface SET interface %adapter_name% DISABLED
TIMEOUT 15
XCOPY /E /Q %cp_path% %cp_route% /Y
NETSH interface SET interface %adapter_name% ENABLED
