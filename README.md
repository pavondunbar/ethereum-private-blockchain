# Ethereum Private Blockchain

This Linux Bash script will create an Ethereum Private Blockchain on your server.  In addition, the shell script will also create the genesis.json file, instantiate it, and start the Ethereum Private Blockchain on your server.

It is highly recommended that you have TMUX installed on your system.  

On one side of the screen you will run the script.  

On the other side of the screen, you would need to launch the Geth IPC client, create your user account, and mine some ether.

Here are the steps to run the Geth IPC Client:

geth attach /home/petros/eth-evm/data/PrivateBlockchain/geth.ipc (Starts the Geth IPC client)

personal.newAccount() (creates your personal account on the Ethereum Private Blockchain)

eth.coinbase (shows your personal account hash)

eth.getBalance(eth.coinbase) (shows your balance in ether which will be 0 at initialization)

miner.start() (allows you to mine ether)

miner.stop() (stops the miner)

Enjoy!  
