#!/bin/bash

mkdir -p target
java -jar bin/Html2Pdf.jar -f resume.html -o target/resume.pdf
