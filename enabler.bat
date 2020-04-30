@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    @echo on
    bcdedit /set hypervisorlaunchtype auto
    shutdown -r -t 10
) else (
    echo please run as admin
    pause
    exit /b
)