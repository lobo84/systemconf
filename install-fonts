#!/bin/bash
TMP_DST="/tmp/adodefont"
mkdir $TMP_DST
wget -P $TMP_DST https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip $TMP_DST/1.030R-it.zip -d $TMP_DST
mkdir -p ~/.fonts
cp $TMP_DST/source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v

