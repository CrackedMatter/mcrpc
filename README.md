## This is work in progress, don't use it yet
Also ignore everything below for now

# MCRPC

(Minecraft resource pack converter)

A shell script that converts Minecraft resource packs from Java Edition to Bedrock Edition.
Made for Unix-like systems.

## Dependencies

- [perl](https://github.com/Perl/perl5)
- [util-linux](https://github.com/karelzak/util-linux)

Run `uuidgen` before and after installing util-linux.
You only have to install util-linux if uuidgen doesn't work.
If uuidgen still doesn't work after installing util-linux, read the
[troubleshooting section](README.md#troubleshooting).

## Installation
```
cd
git clone https://github.com/CrackedMatter/mcrpc
chmod +x ~/mcrpc/mcrpc.sh
echo 'alias mcrpc="~/mcrpc/mcrpc.sh"' >> .bashrc
exec sh
```

## Updating
```
cd
git pull https://github.com/CrackedMatter/mcrpc
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

## Troubleshooting

### Android

Follow these steps before installing MCRPC:

1. Install Termux from F-Droid: https://f-droid.org/en/packages/com.termux/
2. Open it and run these commands:
```
pkg install perl
pkg install ossp-uuid
echo 'alias uuidgen="uuid -v4"' >> .bashrc
```
3. Now continue with the [installation](README.md#installing)
