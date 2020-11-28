@echo off

setlocal
if "%1%"=="--v" ( 
echo nugetpush version 1.0.0
echo By Kolawole Abobade kolawole.abobade@outlook.com
) else ( 
	echo ::::::::Packaging your library ::::::::
	nuget pack
	echo %ERRORLEVEL%
	IF %ERRORLEVEL% NEQ 0 (
		echo "An error occur while packing file"
		goto:eof 
	)
	echo ::::::::Fetching secret key...::::::::
	set /p secretkey=<%1%
	echo "Fetched secret key"
	@set "dr=%CD%\ *.nupkg"
	for %%a in (*.nupkg) do set nupkg=%%a
	echo ::::::::Package found and about to push to nuget::::::::
	nuget push %nupkg% %secretkey% -Source https://api.nuget.org/v3/index.json"

	pause

)
endlocal
