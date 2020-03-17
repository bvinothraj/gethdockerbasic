#!/bin/bash

if [[ ! -e "./nodedata/genesis.json" && ! -d "./nodedata/geth/chaindata" ]]; then
	echo "Initializing chain..."
	mkdir nodedata
	mkdir nodedata/keystore
	cp keystore/* nodedata/keystore
	cp genesis.json nodedata/genesis.json
	geth --datadir nodedata init nodedata/genesis.json
else
	echo "Already initialized...starting up..."
fi

geth --datadir nodedata \
	 --port 30311 \
	 --rpc \
	 --rpcaddr '0.0.0.0' \
	 --rpcport 8501 \
	 --rpcapi 'admin,personal,db,eth,net,web3,txpool,miner,clique' \
	 --rpccorsdomain '*' \
	 --unlock '0' \
	 --password pp.txt \
	 --mine \
	 --allow-insecure-unlock