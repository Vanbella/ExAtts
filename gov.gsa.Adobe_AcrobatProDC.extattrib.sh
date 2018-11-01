#!/bin/sh

#  gov.gsa.Adobe_AcrobatProDC.extattrib.sh
#  govgsagit
#  Returns the version of Acrobat Pro DC installed
#  Created by AVB on 11/01/18.
#  
# Variables
##############################################
bddy=/usr/libexec/PlistBuddy
tgt=/Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app/Contents/Info.plist
##############################################
if [[ -e $tgt ]]; then
instld=`$bddy -c "print CFBundleShortVersionString" "$tgt"`
echo "<result>$instld</result>"
else
echo "<result>Not Installed</result>"
fi
exit 0
