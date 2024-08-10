#!/bin/bash

POM_FILE=${1:-"./pom.xml"}

if [ ! -f "$POM_FILE" ]; then
  echo "Error: pom.xml not found at path $POM_FILE"
  exit 1
fi

if grep -q "<artifactId>hot-observability-spring-boot-starter</artifactId>" "$POM_FILE"; then
  echo "Dependency 'hot-observability-spring-boot-starter' found in $POM_FILE"
else
  echo ""
  echo "Error: Dependency 'hot-observability-spring-boot-starter' NOT found in $POM_FILE"
  echo "see https://techdeck.hotmart.co/catalog/default/component/heimdall/docs/findings/app_without_observability_java/"
  echo ""
  exit 1
fi