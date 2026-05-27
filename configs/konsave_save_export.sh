#/bin/bash

# 1. Get the absolute path of the script's location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# 2. Get the absolute path of the user's current working directory
CURRENT_DIR="$(pwd)"

# 3. Compare the two directories
if [ "$SCRIPT_DIR" != "$CURRENT_DIR" ]; then
    cd $SCRIPT_DIR
    #echo "Error: This script must be executed from within its own folder. ($SCRIPT_DIR)"
    #exit 1
fi


DATE="$(date +\"%Y-%m-%d-%H-%M-%S\")"
git pull
PROFILE_NAME="kde_plasma_cachy_os"
echo $PROFILE_NAME
rm $PROFILE_NAME.knsv
konsave -s $PROFILE_NAME -f
konsave -e $PROFILE_NAME
#git add -A 
#$PROFILE_NAME.knsv
git commit -am "update konsave $DATE"
git push -u origin HEAD
