

call %~dp0\utils\set_env.bat

cd %HYGIEIA_BASE%\api\target

REM This will generate an application.properties file

call %~dp0\utils\generatePropertiesFile.bat

REM Get the current name of the jar file

FOR /F "delims=" %%i IN ('"%GIT_BASE%\usr\bin\ls.exe" api*.jar') DO set jarfile=%%i

start java %JAVA_DEBUG_OPTS% -jar %jarfile% --spring.config.location=application.properties api.jar