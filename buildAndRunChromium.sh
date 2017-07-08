#!/bin/bash
FOLDER=$1
COMPONENT=$2
COMPONENT_ARGUMENTS=$3
EXECUTABLE=""

case "$COMPONENT" in
  chrome)
    EXECUTABLE='Chromium.app/Contents/MacOS/Chromium'
  ;;
  browser_tests|browsertests)
    # Define to support running with mis-typed component.
    COMPONENT='browser_tests'
    EXECUTABLE="$COMPONENT --gtest_filter=*$COMPONENT_ARGUMENTS*"
  ;;
esac

ninja -C out/$FOLDER $COMPONENT && out/$FOLDER/$EXECUTABLE
