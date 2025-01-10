#!/bin/sh -x
sudo cp ./Driver/99-Kingst.rules /etc/udev/rules.d/99-Kingst.rules

appPath=$(dirname $(readlink -f $0))
desktopFile=$appPath/KingstVIS.desktop
echo "Create new test file: $desktopFile"
touch $desktopFile
chmod u+x $desktopFile 

echo "[Desktop Entry]" > $desktopFile
echo "Encoding=UTF-8" >> $desktopFile
echo "Version=1.0" >> $desktopFile
echo "Type=Application" >> $desktopFile
echo "Terminal=false" >> $desktopFile
echo "Exec="$appPath"/KingstVIS" >> $desktopFile
echo "Name=KingstVIS" >> $desktopFile
echo "Icon="$appPath"/Resource/logo.ico" >> $desktopFile

sudo cp $desktopFile /usr/share/applications/

sudo rm $desktopFile

.$dirname/KingstVIS &
