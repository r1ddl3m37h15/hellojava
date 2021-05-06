@echo on

@rem
@rem building on local
@rem

set LOG_URL=localhost
set JOB_NUMBER=0001

docker run --rm -v "%CD%":/usr/src/myapp -w /usr/src/myapp -e JOB_NUMBER:%JOB_NUMBER% -e LOG_URL:%LOG_URL% r1ddl3m37h15/jdk8-ant:v2 ant %*
if ERRORLEVEL 1 exit /b 1