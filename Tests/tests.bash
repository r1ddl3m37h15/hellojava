#/bin/bash

set -e

java -jar HelloWorld/build/HelloJava/HelloWorld/jar/HelloWorld.jar

java -classpath ./HelloWorld/build/HelloJava/HelloWorld/classes oata.HelloWorld

echo ----------
echo -- pass --
echo ----------
