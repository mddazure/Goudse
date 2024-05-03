az network vnet create -g $rgname -n g-spoke-0-1 --address-prefixes 172.16.1.0/24 --subnet-name default --subnet-prefixes 172.16.9.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-0-2 --address-prefixes 172.16.2.0/24 --subnet-name default --subnet-prefixes 172.16.10.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-0-3 --address-prefixes 172.16.3.0/24 --subnet-name default --subnet-prefixes 172.16.11.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-0-4 --address-prefixes 172.16.4.0/24 --subnet-name default --subnet-prefixes 172.16.12.0/26 --no-wait

az network vnet create -g $rgname -n g-spoke-1-5 --address-prefixes 172.16.5.0/24 --subnet-name default --subnet-prefixes 172.16.9.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-1-6 --address-prefixes 172.16.6.0/24 --subnet-name default --subnet-prefixes 172.16.10.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-1-7 --address-prefixes 172.16.7.0/24 --subnet-name default --subnet-prefixes 172.16.11.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-1-8 --address-prefixes 172.16.8.0/24 --subnet-name default --subnet-prefixes 172.16.12.0/26 --no-wait

az network vnet create -g $rgname -n g-spoke-2-9 --address-prefixes 172.16.9.0/24 --subnet-name default --subnet-prefixes 172.16.9.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-2-10 --address-prefixes 172.16.10.0/24 --subnet-name default --subnet-prefixes 172.16.10.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-2-11 --address-prefixes 172.16.11.0/24 --subnet-name default --subnet-prefixes 172.16.11.0/26 --no-wait
az network vnet create -g $rgname -n g-spoke-2-12 --address-prefixes 172.16.12.0/24 --subnet-name default --subnet-prefixes 172.16.12.0/26 --no-wait
