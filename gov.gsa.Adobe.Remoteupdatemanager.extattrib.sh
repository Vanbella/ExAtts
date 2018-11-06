#!/bin/sh

#  gov.gsa.Adobe.Remoteupdatemanager.extattrib.sh
#  govgsagit
#
#  Created by AVB on 11/06/18.
#
if [ -f "/usr/local/bin/RemoteUpdateManager" ] ; then 
    RESULT=`/usr/local/bin/RemoteUpdateManager --help 2>&1 | awk ' NR==1{ print $5 } '`
else
    RESULT="not installed"
fi

echo "<result>$RESULT</result>"
