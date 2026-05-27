#/bin/bash
$DATE = "$(date +"%Y-%m-%d-%H-%M-%S")"
git pull
$PROFILE_NAME=kde_plasma_cachy_os
rm $PROFILE_NAME
konsave -s $PROFILE_NAME -f
konsave -e $PROFILE_NAME
git add $PROFILE_NAME.knsv
git commit -m "update konsave $DATE"
git push
