@echo off

call %~dp0\utils\set_env.bat

cd %HYGIEIA_BASE%\UI

start gulp serve