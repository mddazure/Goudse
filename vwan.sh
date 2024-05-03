rgname="Goudse1"
location="swedencentral"

az group create -n $rgname -l $location

az network vwan create -g $rgname -l $location -n vwan-0
az network vwan create -g $rgname -l $location -n vwan-1


az network vhub create -g $rgname -n hub-0 -l $location --addressprefix 192.168.0.0/24 --vwan-0 --no-wait
az network vhub create -g $rgname -n hub-2 -l $location --addressprefix 192.168.2.0/24 --vwan-0 --no-wait
az network vhub create -g $rgname -n hub-1 -l $location --addressprefix 192.168.1.0/24 --vwan-1 --no-wait

az network vhub route-table create --name RED -g $rgname --vhub-name hub-0 --labels red

az network vpn-gateway create -n hub-0-vpn -g $rgname --vhub hub-0
az network vpn-gateway create -n hub-1-vpn -g $rgname --vhub hub-1
az network vpn-gateway create -n hub-2-vpn -g $rgname --vhub hub-2

az network express-route gateway create --name hub-0-er -g $rgname --virtual-hub hub-0
az network express-route gateway create --name hub-1-er -g $rgname --virtual-hub hub-1
az network express-route gateway create --name hub-2-er -g $rgname --virtual-hub hub-2