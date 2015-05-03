#!/bin/bash

./bin/generate-pdf.sh

sftp cintiadr@frs.sourceforge.net <<EOF
  cd userweb/htdocs/resume
  put *.css
  put *.html
  put target/*.pdf
  quit
EOF