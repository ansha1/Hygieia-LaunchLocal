REM Default hygieia folder

IF "%HYGIEIA_BASE%"=="" (
	echo HYGIEIA_BASE is not defined - using default C:\Hygieia
	echo Please define HYGIEIA_BASE to use a different directory
	set HYGIEIA_BASE=c:\hygieia
) ELSE (
	echo Using HYGIEIA_BASE=%HYGIEIA_BASE%
)

REM Default git folder

IF "%GIT_BASE%"=="" (
	echo GIT_BASE is not defined - using default C:\Program Files\Git
	echo Please define GIT_BASE to use a different directory
	set GIT_BASE=C:\Program Files\Git
) ELSE (
	echo Using GIT_BASE=%GIT_BASE%
)

if "%HYGIEIA_JAVA_DEBUG%"=="true" (
	echo Launching java services in debug, listening to port %JAVA_DEBUG_PORT%
	set JAVA_DEBUG_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=%JAVA_DEBUG_PORT%
) ELSE (
	echo Launching java services in production mode
	set JAVA_DEBUG_OPTS=
)