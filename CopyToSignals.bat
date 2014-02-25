@echo on
set BATDIR="%~dp0"
set LIBPATH=%1\modules\extra_lib

REM create dirs
mkdir %1\modules\extra_lib
mkdir %1\modules\extra_lib\include
mkdir %1\modules\extra_lib\lib\win32\Debug
mkdir %1\modules\extra_lib\lib\win32\Release
mkdir %1\modules\extra_lib\lib\x64\Debug
mkdir %1\modules\extra_lib\lib\x64\Release

REM include
xcopy /i /e /q /y %BATDIR%\include %LIBPATH%\include

REM lib
xcopy /i /e /q /y %BATDIR%\lib\win32\Debug   %LIBPATH%\lib\win32\Debug
xcopy /i /e /q /y %BATDIR%\lib\win32\Release %LIBPATH%\lib\win32\Release
xcopy /i /e /q /y %BATDIR%\lib\x64\Debug     %LIBPATH%\lib\x64\Debug
xcopy /i /e /q /y %BATDIR%\lib\x64\Release   %LIBPATH%\lib\x64\Release

REM bin
copy %BATDIR%\bin\win32\Debug\*.*   %1\bin\win32\Debug
copy %BATDIR%\bin\win32\Release\*.* %1\bin\win32\Release
copy %BATDIR%\bin\x64\Debug\*.*     %1\bin\x64\Debug
copy %BATDIR%\bin\x64\Release\*.*   %1\bin\x64\Release
