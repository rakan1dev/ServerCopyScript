
@echo off
rem ServerCopyingScript.BAT transfers all files in all subdirectories of
rem the source drive or directory (180 Main App Server) to the destination
rem drive or directory (Other App servers). Written By @Rakan Ghuwaydi
Xcopy D:\RFCzCopy \\172.16.3.181\$d\Release /e /h /c /i /y /z
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort
if errorlevel 0 goto s191
:lowmemory
echo Insufficient memory to copy files or
echo invalid drive or command-line syntax.
goto exit
:abort
echo You pressed CTRL+C to end the copy operation.
goto exit
:s191
echo Copying to Server 172.16.3.191
Xcopy D:\RFCzCopy \\172.16.3.191\$d\Release /e /h /c /i /y /z
goto s192
:s192
echo Copying to Server 172.16.3.192
Xcopy D:\RFCzCopy \\172.16.3.192\$d\Release /e /h /c /i /y /z
goto s193
:s193
echo Copying to Server 172.16.3.193
Xcopy D:\RFCzCopy \\172.16.3.193\$d\Release /e /h /c /i /y /z
goto s194
:s194
echo Copying to Server 172.16.3.194
Xcopy D:\RFCzCopy \\172.16.3.194\$d\Release /e /h /c /i /y /z
goto s131
:s131
echo Copying to Server 172.16.3.131
Xcopy D:\RFCzCopy \\172.16.3.131\$d\Release /e /h /c /i /y /z
goto s132
:s132
echo Copying to Server 172.16.3.132
Xcopy D:\RFCzCopy \\172.16.3.132\$d\Release /e /h /c /i /y /z
goto s138
:s138
echo Copying to Server 172.16.3.138
Xcopy D:\RFCzCopy \\172.16.3.138\$d\Release /e /h /c /i /y /z
goto s139
:s193
echo Copying to Server 172.16.3.139
Xcopy D:\RFCzCopy \\172.16.3.193\$d\Release /e /h /c /i /y /z
goto itzover
:itzover
echo The source folder has been copied to the destination folders sucessfully.
if errorlevel 0 goto exit

:exit