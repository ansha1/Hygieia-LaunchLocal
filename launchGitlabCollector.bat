@echo off

call %~dp0\utils\set_env.bat

cd %HYGIEIA_BASE%\collectors\scm\gitlab\target

REM This has generated an application.properties file

call %~dp0\utils\generatePropertiesFile.bat

REM Get the current name of the jar file

FOR /F "delims=" %%i IN ('"%GIT_BASE%\usr\bin\ls.exe" gitlab-scm-collector-*.jar') DO set jarfile=%%i

start java -jar %jarfile% --spring.config.location=application.properties --spring.config.name=gitlab
