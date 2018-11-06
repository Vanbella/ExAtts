#!/bin/sh

#  gov.gsa.Adobe.Remoteupdatemanager.extattrib.sh
#  govgsagit
#  Check to see if the Adobe Remote Update Manager is installed.
#  If the agent is installed, reports the version.

#
#  Created by AVB on 11/06/18.
#
if [ -f "/usr/local/bin/RemoteUpdateManager" ] ; then 
    RESULT=`/usr/local/bin/RemoteUpdateManager --help 2>&1 | awk ' NR==1{ print $5 } '`
else
    RESULT="not installed"
fi

echo "<result>$RESULT</result>"
