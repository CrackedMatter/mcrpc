## This is work in progress, don't use it yet
Also ignore everything below for now

# MCRPC

(Minecraft resource pack converter)

A shell script that converts Minecraft resource packs from Java Edition to Bedrock Edition.
Made for Unix-like systems (e.g. Linux or FreeBSD).
The instructions below where made for GNU/Linux.
If you are using something else, read [this](README.md#other-operating-systems).

## Dependencies

- [perl](https://github.com/Perl/perl5)
- [util-linux](https://github.com/karelzak/util-linux)

## Installing
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

## Other operating systems

Read this, if you are not using GNU/Linux.

### Android

Follow these steps before installing McResourcePackConverter:

1. Install Termux from F-Droid: https://f-droid.org/en/packages/com.termux/
2. Open it and run these commands:
```
pkg install perl
pkg install ossp-uuid
echo 'alias uuidgen="uuid -v4"' >> .bashrc
```
3. Now continue with the [installation](README.md#installing)
