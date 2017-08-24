#!/bin/bash

set -e
set -u
set -x

mkdir -p target
java -jar bin/Html2Pdf.jar -f resume.html -o target/resume.pdf
