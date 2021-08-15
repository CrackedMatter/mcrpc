## This is work in progress, don't use it yet

TODO: Completely redo everything, this programm sucks

# MCRPC

(Minecraft resource pack converter)

A shell script that converts Minecraft resource packs from Java Edition to Bedrock Edition.
Made for Unix-like systems.

## Dependencies

- [jq](https://github.com/stedolan/jq)
- [util-linux](https://github.com/karelzak/util-linux)

Run `uuidgen` before and after installing util-linux.
You only have to install util-linux if uuidgen doesn't work.
If uuidgen still doesn't work after installing util-linux, read the
[troubleshooting section](README.md#troubleshooting).

## Installation
```
git clone https://github.com/CrackedMatter/mcrpc
sudo install mcrpc/mcrpc.sh /usr/local/bin/mcrpc
```
or
```
sudo curl -sL https://raw.githubusercontent.com/CrackedMatter/mcrpc/main/mcrpc.sh -o /usr/local/bin/mcrpc
sudo chmod +x /usr/local/bin/mcrpc
```

### Updating
```
git pull https://github.com/CrackedMatter/mcrpc
sudo install mcrpc/mcrpc.sh /usr/local/bin/mcrpc
```
or
```
sudo curl -sL https://raw.githubusercontent.com/CrackedMatter/mcrpc/main/mcrpc.sh -o /usr/local/bin/mcrpc
```

### Uninstalling
```
sudo rm /usr/local/bin/mcrpc -rf
```

## Usage
```
cd path/to/resource/pack
mcrpc
```

## Troubleshooting

TODO: Fix this messed up section

### Detailed instructions for Android

Follow these steps before installing MCRPC:

1. Install Termux from F-Droid: https://f-droid.org/en/packages/com.termux/
2. Open it and run these commands:
```
pkg install jq ossp-uuid
echo 'alias uuidgen="uuid -v4"' >> .bashrc
```
3. Now continue with the [installation](README.md#installing)

### uuidgen: command not found

1. Look up a command that generates a V4 UUID
2. Install the package if necessary
3. Create an alias in the script named "uuidgen" that runs this command by adding 
`alias uuidgen="<some command>"` at the beginning of the script.
