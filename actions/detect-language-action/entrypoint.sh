#!/bin/bash

# Get the path input (default to current directory)
PROJECT_PATH="${1:-.}"

# Check for language-specific files
if [ -f "$PROJECT_PATH/pom.xml" ]; then
    LANGUAGE="Java"
elif [ -f "$PROJECT_PATH/build.gradle" ] || [ -f "$PROJECT_PATH/build.gradle.kts" ]; then
    LANGUAGE="Java (Gradle)"
elif [ -f "$PROJECT_PATH/package.json" ]; then
    LANGUAGE="JavaScript/Node.js"
elif [ -f "$PROJECT_PATH/requirements.txt" ]; then
    LANGUAGE="Python"
elif [ -f "$PROJECT_PATH/composer.json" ]; then
    LANGUAGE="PHP"
elif [ -f "$PROJECT_PATH/go.mod" ]; then
    LANGUAGE="Go"
elif [ -f "$PROJECT_PATH/CMakeLists.txt" ]; then
    LANGUAGE="C/C++"
elif [ -f "$PROJECT_PATH/Gemfile" ]; then
    LANGUAGE="Ruby"
else
    LANGUAGE="Unknown"
fi

# Output the detected language
echo "language=$LANGUAGE"
echo "language=$LANGUAGE" >> $GITHUB_OUTPUT