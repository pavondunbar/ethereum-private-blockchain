#!/bin/bash

# This script will create an Ethereum Virtual Network on your Server.
# Script written by Pavon Dunbar. 

# Download and Install Binaries

wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.7.3-4bb3c89d.tar.gz
tar xzf geth-linux-amd64-1.7.3-4bb3c89d.tar.gz
cd geth-linux-amd64-1.7.3-4bb3c89d/
cp geth /usr/bin/

# Build from Source Code and Install Go (GoLang)

apt-get install -y build-essential golang
make geth

# Install From Public Repository

apt-get install software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get install ethereum -y

# Creating the Ethereum Private Blockchain

mkdir ~/eth-evm && cd ~/eth-evm
mkdir config data && cd config

# Create Genesis Block

cat <<EOF >genesis.json
{
    "config": {
        "chainId": 999,
        "homesteadBlock": 0,
        "eip155Block": 0,
        "eip158Block": 0
    },
    "difficulty": "0x400",
    "gasLimit": "0x8000000",
    "alloc": {}
}
EOF

# Instantiate Data Directory

geth --datadir /home/petros/eth-evm/data/PrivateBlockchain
init /home/petros/eth-evm/config/genesis.json
ls -R /home/petros/eth-evm/

# Start the Private Network

geth --datadir /home/petros/eth-evm/data/PrivateBlockchain --networkid 9999

exit 0
