@echo off
setlocal enabledelayedexpansion

@REM set source_folder=C:\Users\Sc\Desktop\Colorectal Cancer\Dataset\___ MY PROJECT ___\colon_image_sets\colon_n
@REM set dest_folder=C:\Users\Sc\Desktop\Colorectal Cancer\Dataset\___ MY PROJECT ___\colon_image_sets\test_set\colon_n
set count=0

for %%i in ("%source_folder%\*.jpeg") do (
    if !count! lss 1000 (
        move "%%i" "%dest_folder%"
        set /a count+=1
    ) else (
        exit /b
    )
)
