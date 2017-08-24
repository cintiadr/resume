#!/bin/bash

set -e
set -u
set -x

./bin/generate-pdf.sh



sshpass -e  sftp -oBatchMode=no -b - cintiadr@frs.sourceforge.net <<EOF
  cd userweb/htdocs/resume
  put *.css
  put *.html
  put target/*.pdf
  quit
EOF
