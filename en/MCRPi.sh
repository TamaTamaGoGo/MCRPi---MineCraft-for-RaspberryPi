#! /bin/sh

dir=`pwd`
echo '[OK] Boot MCRPi.sh'
chose=`zenity --list --radiolist --column=Selected --column "Menu" True "Start Minecraft Launcher" False "Update MCRPi" False "Change user infomation" False "Exit"`

if [ ${chose} = 'Start Minecraft Launcher' ]; then
  sudo rm -r --interactive=never ${HOME}/.minecraft
  sudo mv -f -b -v -T ${dir}/.minecraft ${HOME}/.minecraft
  echo 'Finish prepare'
  echo 'starting launcher'
  ${dir}/jdk1.8.0_244/bin/java -jar 
