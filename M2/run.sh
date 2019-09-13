#!/bin/bash

# Build
temp=`mktemp`
find src/main/java -type f -name "*.java" > $temp
javac -cp lib/resources.jar -d bin @$temp
rm $temp

# Run
java -cp "lib/resources.jar;bin" edu.gatech.oad.antlab.pkg1.AntLabMain