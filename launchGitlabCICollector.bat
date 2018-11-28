@echo off

call %~dp0\utils\set_env.bat

cd %HYGIEIA_BASE%\collectors\build\gitlab-ci\target

REM This will generate an application.properties file

call %~dp0\utils\generatePropertiesFile.bat

REM Get the current name of the jar file

FOR /F "delims=" %%i IN ('"%GIT_BASE%\usr\bin\ls.exe" gitlab-ci-collector-*.jar') DO set jarfile=%%i

start java %JAVA_DEBUG_OPTS% -jar %jarfile% --spring.config.location=application.properties --spring.config.name=gitlab
