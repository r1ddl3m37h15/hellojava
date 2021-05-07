@echo on

@echo .
@echo %COMPUTERNAME%
@echo %CD%
@echo %USERNAME%
@echo .

java -version
@if ERRORLEVEL 1 exit /b 1

call ant -version 
@if ERRORLEVEL 1 exit /b 1

@REM ANT < 1.9.0 is not compatible with JAVA 1.8
@echo on
call ant -Dbuild.compiler=javac1.7
@if ERRORLEVEL 1 exit /b 1
