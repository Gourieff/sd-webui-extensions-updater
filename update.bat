@echo off

call :colored Extensions Green
git pull
echo ---

for /f %%d in ('dir /B /A:D %CD%') do (
    call :colored %%d Green
    cd "%CD%\%%d"
    git pull
    echo ---
    cd..
)

@pause

:colored
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor %2 %1