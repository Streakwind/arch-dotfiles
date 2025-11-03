#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/Pictures/wallpapers"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"
COLOR_FILE="$HOME/.config/colors/colors.css"

cd "$WALLPAPER_DIR" || exit 1

# === Handle spaces in filenames ===
IFS=$'\n'

# === ICON-PREVIEW SELECTION WITH ROFI, SORTED BY NEWEST ===
SELECTED_WALL=$(for a in $(ls -t *.jpg *.png *.gif *.jpeg 2>/dev/null); do
    echo -en "$a\0icon\x1f$a\n"
done | rofi -dmenu -p "")
[ -z "$SELECTED_WALL" ] && exit 1
SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# === GENERATE COLORS WITH MATUGEN ===
mkdir -p "$(dirname "$COLOR_FILE")"
matugen image "$SELECTED_PATH" --file "$COLOR_FILE"

# === SET WALLPAPER WITH SWWW ===
swww img "$SELECTED_PATH" --transition-fps 60 --transition-type fade --transition-duration 0.5

# === CREATE SYMLINK ===
mkdir -p "$(dirname "$SYMLINK_PATH")"
ln -sf "$SELECTED_PATH" "$SYMLINK_PATH"
