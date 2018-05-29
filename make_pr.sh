#!/bin/sh
################################################################################

args="$*"

CurrentDir=`pwd`

fileName="README.md"
templateName="README.template"

cp $templateName $fileName
Date=`date`
echo $Date >> $fileName

git commit -a -m "$Date"
git push
git request-pull
