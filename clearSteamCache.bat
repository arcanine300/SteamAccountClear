taskkill /f /im hl1.exe
taskkill /f /im hl2.exe
taskkill /f /im Steam.exe

::Wait for Steam process to terminate
TIMEOUT /T 3

::If Access is denied to certain registry keys try running the script as admin
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam\Users /f
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam\Users /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\Users /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Users /f
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam /f
REG DELETE HKEY_CURRENT_USER\Software\Valve /f
REG DELETE HKEY_CURRENT_USER\Software\Wow6432Node\Valve\Steam /f
REG DELETE HKEY_CURRENT_USER\Software\Wow6432Node\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\Users /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\Software\Valve\Steam\Users /f
REG DELETE HKEY_LOCAL_MACHINE\Software\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Classes\steam /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\steam /f
REG DELETE HKEY_CLASSES_ROOT\steam /f
cd\

::Change the following line to your Steam install directory
cd C:\Program Files (x86)\Steam

del /s /q d:appcache\Steam.log
del /S /q d:appcache\AppUpdateStats.blob
del /S /q d:appcache\GameOverlayRenderer.log
del /S /q d:appcache\GameOverlayUI.exe.log
del /S /q d:appcache\crashhandler.dll
del /S /q d:appcache\crashhandler64.dll
del /S /q d:appcache\CSERHelper.dll
del /S /q d:appcache\Steam.dll
del /S /q d:appcache\steamclient.dll
del /S /q d:appcache\steamclient64.dll
del /S /q d:appcache\SteamUI.dll
del /S /q d:appcache\streaming_client.exe
del /S /q d:appcache\WriteMiniDump.exe
del /S /q d:appcache\debug.log
del /Q F logs
del /Q F *.mdmp
del ClientRegistry.blob

rmdir /S /Q "appcache"
rmdir /S /Q "config"
rmdir /S /Q "userdata"
rmdir /S /Q "dumps"
rmdir /S /Q "logs"

::Uncomment final line to debug output
::PAUSE
