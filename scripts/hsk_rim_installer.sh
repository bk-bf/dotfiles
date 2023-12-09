#!/bin/bash

# URLs of HSK, Parabellum, all Mineral Mods and Viles
URL_HSK="https://github.com/skyarkhangel/Hardcore-SK.git"
URL_Para="https://github.com/Xx-Nelson-xX/Parabellum.git"
URL_Viles="https://github.com/xenomacabre/VilesMods.git"
URL_MinSK="https://github.com/zachary-foster/MineralsCraft_SK.git"
URL_MinEx="https://github.com/zachary-foster/MineralsExtra.git"

# path of the folder to save the downloaded file
SAVE_PATH="/home/kirill/Downloads/Rimworld"
PATH_MODS="/media/NVME/SteamLibrary/steamapps/common/RimWorld/Mods"
PATH_CONF="/home/kirill/.config/unity3d/Ludeon Studios/RimWorld by Ludeon Studios/Config"

# create temporary directory called Rimworld
# split it in subdirectories
if ! test -f "$SAVE_PATH"; then 
  mkdir -p "$SAVE_PATH/HSK"
  mkdir -p "$SAVE_PATH/Para"
  mkdir -p "$SAVE_PATH/Viles"
  mkdir -p "$SAVE_PATH/MineralsCraft_SK"
  mkdir -p "$SAVE_PATH/MineralsExtra"
fi

# download the file using git clone
if ! test -f "$SAVE_PATH"; then
  if command -v git clone >/dev/null 2>&1; then
    git clone --progress "$URL_HSK" "$SAVE_PATH/HSK" 
    git clone --progress "$URL_Para" "$SAVE_PATH/Para" 
    git clone --progress "$URL_Viles" "$SAVE_PATH/Viles" 
    git clone --progress "$URL_MinSK" "$SAVE_PATH/MineralsCraft_SK"
    git clone --progress "$URL_MinEx" "$SAVE_PATH/MineralsExtra"
    else
    echo "Error: git is not installed." >&2
    exit 1
  fi
else
  continue
fi

# check if the Mods directory exisits and remove it if it does
if [ -d "$PATH_MODS" ]; then
  rm -rf "$PATH_MODS"
fi

# move the cloned mods to the Rimworld mods directory
mkdir "$PATH_MODS"
cp -r "$SAVE_PATH/HSK/Mods"/* "$PATH_MODS/"
cp -r "$SAVE_PATH/Para/Parabellum" "$PATH_MODS/"
cp -r "$SAVE_PATH/MineralsCraft_SK" "$PATH_MODS/"
cp -r "$SAVE_PATH/MineralsExtra" "$PATH_MODS/"

# remove Viles spam
rm -rf "$SAVE_PATH/Viles/.git"
rm -rf "$SAVE_PATH/Viles/.gitattributes"
rm -rf "$SAVE_PATH/Viles/README.md"
rm -rf "$SAVE_PATH/Viles/RimThemesLite"
rm -rf "$SAVE_PATH/Viles/VileCoreTextureReplacementR2"

# move ModsConfig.xml 
chmod 777 "$SAVE_PATH"
chmod 777 "$SAVE_PATH/Viles/ModsConfig.xml"
cp -rf "$SAVE_PATH/Viles/ModsConfig.xml" "$PATH_CONF"

# move Viles Mods
cp -r "$SAVE_PATH/Viles"/* "$PATH_MODS/"
rm -rf "$PATH_MODS/ModsConfig.xml"

# clean up temporary directory
rm -rf "$SAVE_PATH"







