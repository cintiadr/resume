#!/bin/bash

set -e
set -u
set -x

./bin/generate-pdf.sh


sftp cintiadr:$SSHPASS@frs.sourceforge.net -o "StrictHostKeyChecking=no" -b bin/sftp.bat 
