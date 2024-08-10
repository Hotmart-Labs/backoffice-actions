#!/bin/bash

POM_FILE=${1:-"./pom.xml"}

if [ ! -f "$POM_FILE" ]; then
  echo "Error: pom.xml not found at path $POM_FILE"
  exit 1
fi

if grep -q "<artifactId>xss-protection-spring-boot-starter</artifactId>" "$POM_FILE"; then
  echo "Dependency 'hot-observability-spring-boot-starter' found in $POM_FILE"
else
  echo "Error: Dependency 'hot-observability-spring-boot-starter' NOT found in $POM_FILE"
  exit 1
fi