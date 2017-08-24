#!/bin/bash

set -e
set -u
set -x

./bin/generate-pdf.sh

sftp cintiadr:$SSHPASS@frs.sourceforge.net -o "StrictHostKeyChecking=no"  <<EOF
  cd userweb/htdocs/resume
  put *.css
  put *.html
  put target/*.pdf
  quit
EOF
