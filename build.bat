@echo on

@rem
@rem building on local
@rem

set CI_JOB_ID=0001
set CI_PIPELINE_URL=localhost

docker run --rm -v "%CD%":/usr/src/myapp -w /usr/src/myapp -e CI_JOB_ID:%CI_JOB_ID% -e CI_PIPELINE_URL:%CI_PIPELINE_URL% r1ddl3m37h15/jdk8-ant:v2 ant %*
if ERRORLEVEL 1 exit /b 1