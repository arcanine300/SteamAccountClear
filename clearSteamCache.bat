taskkill /f /im hl1.exe
taskkill /f /im hl2.exe
taskkill /f /im Steam.exe
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam\Users /f
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam\Users /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\User s /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Users /f
REG DELETE HKEY_CURRENT_USER\Software\Valve\Steam /f
REG DELETE HKEY_CURRENT_USER\Software\Valve /f
REG DELETE HKEY_CURRENT_USER\Software\Wow6432Node\Valve\Steam /f
REG DELETE HKEY_CURRENT_USER\Software\Wow6432Node\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve\User s /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\Software\Valve\Steam\Users /f
REG DELETE HKEY_LOCAL_MACHINE\Software\Valve /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Classes\steam /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\steam /f
REG DELETE HKEY_CLASSES_ROOT\steam /f
cd\

::Change the following line to your Steam install directory
cd C:\Program Files (x86)\Steam

del /s /q d:\C:\appcache\Steam.log
del /S /q d:\C:\appcache\AppUpdateStats.blob
del /S /q d:\C:\appcache\GameOverlayRenderer.log
del /S /q d:\C:\appcache\GameOverlayUI.exe.log
del /S /q d:\C:\appcache\crashhandler.dll
del /S /q d:\C:\appcache\crashhandler64.dll
del /S /q d:\C:\appcache\CSERHelper.dll
del /S /q d:\C:\appcache\Steam.dll
del /S /q d:\C:\appcache\steamclient.dll
del /S /q d:\C:\appcache\steamclient64.dll
del /S /q d:\C:\appcache\SteamUI.dll
del /S /q d:\C:\appcache\streaming_client.exe
del /S /q d:\C:\appcache\WriteMiniDump.exe
del /S /q d:\C:\appcache\debug.log
del /Q F logs
del /Q F *.mdmp
del ClientRegistry.blob

rmdir /S /Q "C:\appcache"
rmdir /S /Q "C:\config"
rmdir /S /Q "C:\userdata"
rmdir /S /Q "C:\dumps"
rmdir /S /Q "C:\logs"
rmdir /S /Q "C:\appcache"
