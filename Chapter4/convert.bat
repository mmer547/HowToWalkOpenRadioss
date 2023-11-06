@echo off
@setlocal enabledelayedexpansion

set num=1
set chk=daruma1A

for %%i in (*) do (
    echo %%i | find "%chk%" >NUL
    if not ERRORLEVEL 1 (
        echo %%i | find ".vtk" >NUL
        if ERRORLEVEL 1 (
            call C:\Users\hamma\Documents\OpenRadioss\exec\anim_to_vtk_win64.exe %%i > %%i.vtk 2>&1
        )
    )
)