#!/bin/bash

fileName=$1
outputfile=$2
whatToDo=$3
fileRelativePath=$(basename "$fileName")
if [ "$whatToDo" = "encrypt" ]; then
echo "starting encryption"
openssl enc -aes-256-cbc -in $fileRelativePath -out $outputfile
echo "finished encryption"
elif [ "$whatToDo" = "decrypt" ]; then
echo "starting decryption"
openssl enc -aes-256-cbc -d -in $fileRelativePath -out $outputfile
echo "finished decryption"
else
echo "somethin is wrong with the third argument given to the script, its => " $whatToDo
echo "it can be either 'encrypt' or 'decrypt'"
fi
