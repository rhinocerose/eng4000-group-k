#!/bin/bash

CAM_PATH="$HOME/EAGLE/cam/OSHPark_2_layer.cam"
PARENT_PATH=$( pwd -P )
GERBER_PATH="$PARENT_PATH/production/gerbers"
DOCU_PATH="$PARENT_PATH/documentation"

rm -rf "$GERBER_PATH"/"$1"-gerbers.zip
mkdir -pv "$GERBER_PATH"
eagle -X -dCAMJOB -j"$CAM_PATH" -o"$GERBER_PATH" "$1".brd
zip "$GERBER_PATH"/"$1"-gerbers.zip "$GERBER_PATH"/*
rm "$GERBER_PATH"/*.ger
rm "$GERBER_PATH"/*.xln

rm "$DOCU_PATH/$1-BOARD.pdf"
rm "$DOCU_PATH/$1-BOARD-noscale.pdf"
rm "$DOCU_PATH/$1-SCHEMATIC.pdf"
mkdir -pv "$DOCU_PATH"
eagle -C "print 2.4 -1 file $DOCU_PATH/$1-BOARD.pdf paper letter sheets ALL landscape; quit;" "$1".sch
eagle -C "print 1 -1 file $DOCU_PATH/$1-BOARD-noscale.pdf paper letter sheets ALL landscape; quit;" "$1".sch
eagle -C "print 2.4 -1 file $DOCU_PATH/$1-SCHEMATIC.pdf paper letter sheets ALL landscape; quit;" "$1".brd
