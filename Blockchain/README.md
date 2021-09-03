# python-homework
#Proof of Authority Blockchain

#the first thing I did was create both nodes
#1 ./geth account new --datadir nodeuno
#2 ./geth account new --datadir nodedos

![2nd screenshot](https://user-images.githubusercontent.com/56242404/131944999-ef9e04ea-4b0d-4a42-a1c1-23abe2cc66f4.PNG)
![3rd screenshot](https://user-images.githubusercontent.com/56242404/131945121-523c2ec3-89cd-40b7-b6d1-751074288b84.PNG)

#the second step I took was Initializing each node with the new.json file
#1 ./geth --datadir nodeuno init barajasnet.json
#2 ./geth --datadir nodedos init barajasnet.json


![4th screenshot](https://user-images.githubusercontent.com/56242404/131946006-afa8ede3-a436-4d5a-810c-31bcc015726f.PNG)

#the next step I took was running the nodes in seperate terminals
#1 ./geth --datadir nodeuno --unlock "0xcE201d48f78963F207504b73B97b66dB151C6972" --mine --rpc --allow-insecure-unlock
#2 ./geth --datadir nodedos --unlock "0x548C2b0574A138469cAF596cd0a3a72fDAC30d43" --mine --port 30304 --bootnodes #"enode://f6bee655381cffcd287ee388f113a46f00aada3c5a42a3ccc470fd1f123760468f4b7c3dff9b25e81a28d1ef5e24e9814d45f4d95d282cd4c804cf3472767617@127.0.0.1:30303" --ipcdisable --allow-#insecure-unlock

![5th screenshot](https://user-images.githubusercontent.com/56242404/131946612-72ea9cfc-db69-4af7-8d3c-0505df0ea991.PNG)
![7th screenshot](https://user-images.githubusercontent.com/56242404/131946614-c850944e-2cad-4ba6-b1b9-cd46a1948b9a.PNG)

#next I created my custom network

![8th screenshot](https://user-images.githubusercontent.com/56242404/131946833-b93dbe88-a384-41ca-844a-6ea60fdf8ce5.PNG)

#I kept getting an error and was not able to get my network to connect although I did follow the instructions to a T
