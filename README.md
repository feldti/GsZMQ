# GsZMQ
Binding of the ZMQ library against Gemstone/S under Linux. Here a small bash script to download the ZMQ library and compile it and install it. The script also compiles libsodium (cryptography support).

```Bash
wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.18.tar.gz
tar xvf libsodium-1.0.18.tar.gz
cd libsodium-1.0.18
./autogen.sh
./configure
make check
sudo make install
sudo ldconfig
cd
rm -rf libsodium-1.0.18
#
# Übersetzen und Installation von 0MQ
#
cd
rm -rf zeromq-4.1.6
wget https://github.com/zeromq/zeromq4-1/releases/download/v4.1.6/zeromq-4.1.6.tar.gz
tar xvf zeromq-4.1.6.tar.gz
cd zeromq-4.1.6
./configure
make
sudo make install
sudo ldconfig
cd
rm -rf zeromq-4.1.6
```

## Installation

You can load GsZMQ using Metacello

```Smalltalk
Metacello new
  repository: 'github://feldti/GsZMQ:main/repository';
  baseline: 'ZMQ';
  load
```
