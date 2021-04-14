@echo Please make sure that the scanner USB cable is disconnected
@pause
wdreg.exe -inf panini.inf -silent -log C:\PaniniUSB.log install
copy PaniniUSB.sys %WINDIR%\SysWOW64\drivers\PaniniUSB.sys
copy PaniniUSB.dll %WINDIR%\SysWOW64\PaniniUSB.dll
copy PaniniULD.dll %WINDIR%\SysWOW64\PaniniULD.dll
