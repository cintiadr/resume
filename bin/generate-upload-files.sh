#!/bin/bash

set -e
set -u
set -x

mkdir -p target
wget -O target/html2pdf.jar https://s3-ap-southeast-2.amazonaws.com/cintia.me/resume/html2pdf.jar

cd resume
java -jar ../target/html2pdf.jar -f resume.html -o resume.pdf

aws s3 sync . s3://cintia.me/
