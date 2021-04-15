@echo off

@rem
@rem building on local
@rem

set LOG_URL=localhost
set JOB_NUMBER=00001

docker run --rm -v "%CD%":/usr/src/myapp -w /usr/src/myapp r1ddl3m37h15/jdk8-ant:latest ant %*
if ERRORLEVEL 1 exit /b 1