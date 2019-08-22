# Ethereum Private Blockchain

This Linux Bash script will create an Ethereum Private Blockchain on your server.  In addition, the shell script will also create the genesis.json file, instantiate it, and start the Ethereum Private Blockchain on your server.

It is highly recommended that you have TMUX installed on your system.  

On one side of the screen you will run the script.  

On the other side of the screen, you would need to launch the Geth IPC client, create your user account, and mine some ether.

You should also have a dedicated VPS with 4GB of RAM minimum.

These commands must also be run everytime you want to launch the Ethereum Private Blockchain. Geth will not remember these commands.


1. geth --datadir /home/petros/eth-evm/data/PrivateBlockchain
2. init /home/petros/eth-evm/config/genesis.json
3. geth --datadir /home/petros/eth-evm/data/PrivateBlockchain --networkid 9999


Here are the steps to run the Geth IPC Client:


1. geth attach /home/petros/eth-evm/data/PrivateBlockchain/geth.ipc (Starts the Geth IPC client)
2. personal.newAccount() (creates your personal account on the Ethereum Private Blockchain)
3. eth.coinbase (shows your personal account hash)
4. eth.getBalance(eth.coinbase) (shows your balance in ether which will be 0 at initialization)
5. miner.start() (allows you to mine ether)
6. miner.stop() (stops the miner)


Enjoy!  
