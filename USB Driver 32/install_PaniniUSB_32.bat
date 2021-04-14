@echo Please make sure that the scanner USB cable is disconnected
@pause
wdreg.exe -inf panini.inf -silent -log C:\PaniniUSB.log install
copy PaniniUSB.dll %WINDIR%\System32\PaniniUSB.dll
copy PaniniULD.dll %WINDIR%\System32\PaniniULD.dll