timeout /t 60

SET PATH=%PATH%;C:\Perl\bin;C:\strawberry\perl\bin
net use * /DELETE /y
echo Mapping "\\nibataserver.apac.corp.natinst.com\Reports\NG" and copying "Required Files"
net use "\\nibataserver.apac.corp.natinst.com\Reports" /persistent:no /USER:apac.corp.natinst.com\nibtest nibtest
net use "\\10.164.2.249" /persistent:no /USER:apac\nibtest nibtest
if NOT EXIST "C:\Program Files\National Instruments\Shared\LabVIEW Run-Time\2013" (goto 32bit)
:32bit
if NOT EXIST "C:\Program Files (x86)\National Instruments\Shared\LabVIEW Run-Time\2013" (goto noLVRTE)
if exist "C:\Users\%USERNAME%\Desktop\NG\patchTester.pl" (goto perl)
ROBOCOPY "\\nibataserver.apac.corp.natinst.com\Reports\PatchTester\Perl" "C:\Users\%USERNAME%\Desktop\NG\Perl"
ROBOCOPY "\\nibataserver.apac.corp.natinst.com\Reports\NG" "C:\Users\%USERNAME%\Desktop\NG"
@echo off
perl < nul
if errorlevel==1 (goto noperl) ELSE (goto perl)
:noperl
echo NO PERL! Installing Perl...
start "" /wait msiexec.exe /qn /i "C:\Users\%USERNAME%\Desktop\NG\Perl\ActivePerl-5.16.2.1602-MSWin32-x86-296513.msi"
perl < nul
if errorlevel==1 (goto wait) ELSE (goto perl)
:wait
timeout 2000
:noLVRTE
echo NO LVRTE! Installing LVRTE...
ROBOCOPY "\\10.164.2.249\NISoftwareReleased\Windows\Distributions\LabVIEW Add-ons\Run-Time Engine\2013\13.1.0\32-bit\minimum" "C:\Users\%USERNAME%\Desktop\NG\LVRTE"
start "" /wait msiexec.exe /qn /i "C:\Users\%USERNAME%\Desktop\NG\LVRTE\LV2013runtime.msi"
goto perl

:perl
cd "C:\Users\%USERNAME%\Desktop\NG\Client"
Client.exe