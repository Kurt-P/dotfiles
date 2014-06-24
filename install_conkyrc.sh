#!/usr/bin/env bash

BIN=$HOME/.bin ## Location for the scripts
CRC=$HOME/.conkyrc ## conkyrc location

## Backup older conkyrc
if [ -f "$CRC" ]; then
    echo "Copying $CRC to $CRC.old"
    cp $CRC -T $CRC.old
    cp ./conkyrc.bak -T $CRC
else
    cp ./conkyrc.bak -T $CRC
fi

## Check if the ~/.bin folder exists
if ! [ -d $BIN ]; then
    echo "Creating directory $BIN"
    mkdir $BIN ## If not, then create it.
fi

## Make sure that the ~/.bin folder exists or was created
if [ -d $BIN ]; then
    echo "copying scripts"
    cp scripts/temp.sh -T $BIN/temp ## copy and rename the temp.sh script
else 
    echo "$BIN not fount"
    exit 1
fi

## Vervose user output
echo "Install complete"
exit 0

