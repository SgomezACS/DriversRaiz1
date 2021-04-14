@echo Please make sure that the scanner USB cable is disconnected
@pause
@echo.
@echo Uninstalling current driver...
wdreg.exe -inf "%ProgramFiles(x86)%\Panini\USB Driver 64bit"\panini.inf -silent -log C:\PaniniUSB.log uninstall
del %WINDIR%\System32\drivers\PaniniUSB.sys
del %WINDIR%\SysWOW64\drivers\PaniniUSB.sys
del %WINDIR%\SysWOW64\PaniniUSB.dll
del %WINDIR%\SysWOW64\PaniniULD.dll
@echo Installing new driver...
wdreg.exe -inf panini.inf -silent -log C:\PaniniUSB.log install
copy PaniniUSB.sys %WINDIR%\SysWOW64\drivers\PaniniUSB.sys
copy PaniniUSB.dll %WINDIR%\SysWOW64\PaniniUSB.dll
copy PaniniULD.dll %WINDIR%\SysWOW64\PaniniULD.dll