# chromium-local-automation
Tools to locally automate Chromium development

## Installation
Clone this repo somewhere locally and set that folder on your PATH environment variable. Give execution permissions to the file (755).

Execute from src/ path in the Chromium code base whenever you need to build & run.

## Build & run Chrome
Execute: buildAndRunChromium.sh $FOLDER $TARGET

- $FOLDER is the gn out folder name (named Default in the documentation).
- $TARGET is the artifact you are building, 'chrome' in this case.

Example: *buildAndRunChromium.sh Default chrome*

## Build & run browser_tests
Execute: buildAndRunChromium.sh $FOLDER $TARGET $FILTER

- $FOLDER is the gn out folder name (named Default in the documentation).
- $TARGET is the artifact you are building, 'browser_tests' or 'browsertests' in this case.
- $FILTER To only execute the browser tests whose name match the filter.

Example: *buildAndRunChromium.sh Default browser_tests FindBar*
