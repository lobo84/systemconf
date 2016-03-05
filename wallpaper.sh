#!/bin/bash
WALLPAPER_DIR="${HOME}/.wallpapers"
PICKED_WALLPAPER="$(shuf -n 1 $1)"
WALLPAPER_FILE="$(echo $PICKED_WALLPAPER | awk -F"/" '{print $NF }')"
WALLPAPER_PATH="$WALLPAPER_DIR/$WALLPAPER_FILE"
mkdir -p "$WALLPAPER_DIR"
got_wallpaper=true
if [ ! -f $WALLPAPER_PATH ]; then
    got_wallpaper=false
    if wget -P $WALLPAPER_DIR $PICKED_WALLPAPER; then
	got_wallpaper=true;
    fi
fi
if $got_wallpaper ; then
    gsettings set org.gnome.desktop.background picture-uri "$WALLPAPER_PATH";
fi
   
