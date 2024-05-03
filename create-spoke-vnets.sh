az network vnet create -g Goudse -n g-spoke-2-9 --address-prefixes 172.16.9.0/24 --subnet-name default --subnet-prefixes 172.16.9.0/26 --no-wait
az network vnet create -g Goudse -n g-spoke-2-10 --address-prefixes 172.16.10.0/24 --subnet-name default --subnet-prefixes 172.16.10.0/26 --no-wait
az network vnet create -g Goudse -n g-spoke-2-11 --address-prefixes 172.16.11.0/24 --subnet-name default --subnet-prefixes 172.16.11.0/26 --no-wait
az network vnet create -g Goudse -n g-spoke-2-12 --address-prefixes 172.16.12.0/24 --subnet-name default --subnet-prefixes 172.16.12.0/26 --no-wait

