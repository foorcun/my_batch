@echo off

@rem configuration
set project_name=yeni_flutter



rem Check if a given folder exists
rem set check_folder=testfolder
set check_folder=%project_name%

if exist %check_folder%\NUL (
  rem echo Folder %check_folder% exists

rem call :open_in_visual_code

echo project "%check_folder%" already exist
pause
EXIT /B 1
)


call :create_flutter_project
call :open_in_visual_code


echo tamamlandi..
pause



goto :eof
:open_in_visual_code
@rem open in visual code
cd %project_name%
call code .

call fur runy

goto :eof
:create_flutter_project
call flutter create %project_name%

