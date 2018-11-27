set /p basefolder=<baseHygieiaFolder.txt

cd %basefolder%\api\target

REM This has generated an application.properties file

call %~dp0\utils\generatePropertiesFile.bat

REM Get the current name of the jar file

FOR /F "delims=" %%i IN ('"C:\Program Files\Git\usr\bin\ls.exe" api*.jar') DO set jarfile=%%i

start java -jar %jarfile% --spring.config.location=application.properties api.jar