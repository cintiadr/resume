#!/bin/bash

set -e
set -u
set -x

./bin/generate-pdf.sh


sftp  -o "StrictHostKeyChecking=no" -b bin/sftp.bat  cintiadr:$SSHPASS@frs.sourceforge.net
