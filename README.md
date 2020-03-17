# gethdockerbasic
A basic single-node ethereum that runs in docker.  
  * The network is configured (see genesis.json) to run PoA (alias clique) consensus algorithm.  
  * There is only one validator (or sealer) configured for this network.  
  * Blocks are generated every 10 seconds  
  * To attach to the node: *geth attach http://localhost:8502*  
  * Data will persist on restarts as the blockchain data is attached to a volume  

## Description
*Dockerfile* The docker file that uses ethereum/client-go image to create a custom image  
*genesis.json* The configuration for the network (uses PoA consensus)  
*keystore* Contains a pre-created ethereum account which is used as a sealer  
*pp.txt* Password for the sealer  
*start.sh* The script that launches the node after the container is run  

## How to run
*docker-compose up -d*  
Build the services and start the containers (-d is for detached mode)  

*docker-compose down*  
Stop and remove containers  

*docker-compose stop*  
Stop services  

*docker-compose start*  
Start services  