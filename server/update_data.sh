#!/bin/sh
SCRIPTDIR="$( cd -P "$( dirname "$0" )" && pwd )"
cd $SCRIPTDIR
$SCRIPTDIR/make_brew_json.py
date >ncftp.log
ncftpput -m -f ~/.ncftp_data -R /public_html/EH_NTMap/server *.json BrewMap.cfg >>ncftp.log 2>&1

