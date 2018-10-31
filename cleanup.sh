#!/bin/bash

function rmFiles() {
	echo "Working on $1"
	if [ -d "$1/output/" ]; then
  		rm -rf "$1/output/"
	fi
	if [ -d "$1/target/" ]; then
  		rm -rf "$1/target/"
	fi	
	if [ -d "$1/test-output/" ]; then
  		rm -rf "$1/test-output/"
	fi	
}

echo "*********************************************************************"
echo "Clearing output, target, test-output folders recursively in $PWD"
echo "*********************************************************************"
echo ""
rmFiles $PWD
rmFiles $PWD/slingshot-core
rmFiles $PWD/slingshot-gui
rmFiles $PWD/slingshot-reporter
rmFiles $PWD/slingshot-webservice
rmFiles $PWD/slingshot-tdm
echo ""
echo "*********************************************************************"
echo "Cleanup complete"
echo "*********************************************************************"