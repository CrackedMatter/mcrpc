## This is work in progress, don't use it yet
Also ignore everything below for now

# McResourcePackConverter

A shell script that converts Minecraft resource packs from Java Edition to Bedrock Edition.
Made for Unix-like systems (e.g. Linux or FreeBSD).
The instructions below where made for Debian-based Linux distributions. If you are using something else, read [TODO: put smth here]

## Installation
```
cd
git clone https://github.com/CrackedMatter/McResourcePackConverter
chmod +x ~/McResourcePackConverter/mcrpc.sh
echo 'alias mcrpc="~/McResourcePackConverter/mcrpc.sh"' >> .bashrc
exec bash
```

## Updating
```
cd
git pull https://github.com/CrackedMatter/McResourcePackConverter
```

## Usage
```
cd path/to/resource/pack
mcrpc
```

## Uninstalling
```
cd
rm McResourcePackConverter -rf
sed -i '/^alias mcrpc=/d' .bashrc
```
