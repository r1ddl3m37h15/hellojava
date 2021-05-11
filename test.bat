@echo off

@rem
@rem tests on local
@rem

set LOG_URL=localhost
set JOB_NUMBER=00001

docker run --rm -v "%CD%":/usr/src/myapp -w /usr/src/myapp r1ddl3m37h15/openjdk11-build:v1 bash ./Tests/tests.bash
if ERRORLEVEL 1 exit /b 1
