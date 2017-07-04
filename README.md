# chromium-local-automation
Tools to locally automate Chromium development

## Installation
Clone this repo somewhere locally and set that folder on your PATH environment variable. Give execution permissions to the file (755).

Execute from src/ path in the Chromium code base whenever you need to build & run.

## Build & run Chrome
Execute: buildAndRunChromium.sh folder target

- folder is the gn out folder name (named Default in the documentation).
- target is the artifact you are building (like chrome).
