!/bin/bash
FOLDER=$1
COMPONENT=$2
EXECUTABLE=""

case "$COMPONENT" in
chrome) EXECUTABLE='Chromium.app/Contents/MacOS/Chromium';;
esac

ninja -C out/$FOLDER $COMPONENT
out/$FOLDER/$EXECUTABLE
