@echo Please make sure that the scanner USB cable is disconnected
@pause
wdreg.exe -inf panini.inf -silent -log C:\PaniniUSB.log uninstall
del %WINDIR%\System32\drivers\PaniniUSB.sys
del %WINDIR%\System32\PaniniUSB.dll
del %WINDIR%\System32\PaniniULD.dll