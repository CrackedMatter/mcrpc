#!/bin/sh
vmin=$1
vmaj=$2
[ -z "$1" ] && vmin=0
[ -z "$2" ] && vmaj=16
echo -e '{\n  "format_version": 2,\n  "header": {\n   '$(json_pp < pack.mcmeta | grep '^ *"description" *: ')'\n    "name": "'$(basename "$(pwd)")'",\n    "uuid": "'$(uuidgen)'",\n    "version": [ 1, 0, 0 ],\n    "min_engine_version": [ 1, '$vmaj', '$vmin' ]\n  },\n  "modules": [\n    {\n      "description": "",\n      "type": "resources",\n      "uuid": "'$(uuidgen)'",\n      "version": [ 1, 0, 0 ]\n    }\n  ]\n}' > manifest.json
mkdir mcresconv
cd mcresconv
mv ../manifest.json .
cp ../pack.png pack_icon.png
cp -r ../assets/minecraft/* ./

if [ -d "textures" ]; then
cd textures
mv block blocks
mv item items

cd items
mv wooden_armorstand.* armor_stand.png
cd ..

mv painting/paintings_kristoffer_zetterstrand.* painting/kz.png

fi
