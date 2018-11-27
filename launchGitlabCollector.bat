setlocal EnableDelayedExpansion

set /p basefolder=<baseHygieiaFolder.txt

cd %basefolder%\collectors\scm\gitlab\target

REM This has generated an application.properties file

call %~dp0\utils\generatePropertiesFile.bat

cd %basefolder%\collectors\scm\gitlab\target

REM Get the current name of the jar file

FOR /F "delims=" %%i IN ('"C:\Program Files\Git\usr\bin\ls.exe" gitlab-scm-collector-*.jar') DO set jarfile=%%i

start java -jar %jarfile% --spring.config.location=%basefolder%\collectors\scm\gitlab\target\application.properties --spring.config.name=gitlab
