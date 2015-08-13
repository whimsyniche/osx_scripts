#!/bin/sh
#first boot for 10.10 to be used with deploystudio during ds_finalize.sh, copy and paste into new script in ds.

#enable this as needed
#sleep 30

#adjust power setting and turn on remote login and remote apple events,
pmset sleep 0 disksleep 0 displaysleep 30 halfdim 1
systemsetup -setremotelogin on 
systemsetup -setremoteappleevents on

##or
#systemsetup -setremotelogin on -setremoteappleevents on

#turn off offering of TimeMachine upon insert any external storage device
/usr/bin/defaults write /Library/Preferences/com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
/usr/bin/defaults write /Library/Preferences/com.apple.TimeMachine AutoBackup -boolean NO

#enable as needed SoftwareUpdate CatalogURL reference https://support.apple.com/en-us/HT202030 or use profile manger
#sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate CatalogURL URL http://subdoman.domain.edu:8088/index.sucatalog

exit 0
