@echo Please make sure that the scanner USB cable is disconnected
@pause
@echo.
@echo Uninstalling current driver...
wdreg.exe -inf "%ProgramFiles%\Panini\USB Driver 32bit"\panini.inf -silent -log C:\PaniniUSB.log uninstall
del %WINDIR%\System32\drivers\PaniniUSB.sys
del %WINDIR%\System32\PaniniUSB.dll
del %WINDIR%\System32\PaniniULD.dll
@echo Installing new driver...
wdreg.exe -inf panini.inf -silent -log C:\PaniniUSB.log install
copy PaniniUSB.dll %WINDIR%\System32\PaniniUSB.dll
copy PaniniULD.dll %WINDIR%\System32\PaniniULD.dll