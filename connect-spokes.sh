spoke1id=$(az network vnet show -g Goudse --name g-spoke-0-1 --query "id" --output tsv)
spoke2id=$(az network vnet show -g Goudse --name g-spoke-0-2 --query "id" --output tsv)
spoke3id=$(az network vnet show -g Goudse --name g-spoke-0-3 --query "id" --output tsv)
spoke4id=$(az network vnet show -g Goudse --name g-spoke-0-4 --query "id" --output tsv)
spoke5id=$(az network vnet show -g Goudse --name g-spoke-1-5 --query "id" --output tsv)
spoke6id=$(az network vnet show -g Goudse --name g-spoke-1-6 --query "id" --output tsv)
spoke7id=$(az network vnet show -g Goudse --name g-spoke-1-7 --query "id" --output tsv)
spoke8id=$(az network vnet show -g Goudse --name g-spoke-1-8 --query "id" --output tsv)

spoke9id=$(az network vnet show -g Goudse --name g-spoke-2-9 --query "id" --output tsv)
spoke10id=$(az network vnet show -g Goudse --name g-spoke-2-10 --query "id" --output tsv)
spoke11id=$(az network vnet show -g Goudse --name g-spoke-2-11 --query "id" --output tsv)
spoke12id=$(az network vnet show -g Goudse --name g-spoke-2-12 --query "id" --output tsv)

az network vhub connection create --name spoke-1-hub-0 --resource-group Goudse --vhub-name hub-0 --remote-vnet $spoke1id --labels default --no-wait
az network vhub connection create --name spoke-2-hub-0 --resource-group Goudse --vhub-name hub-0 --remote-vnet $spoke2id --labels default --no-wait
az network vhub connection create --name spoke-3-hub-0 --resource-group Goudse --vhub-name hub-0 --remote-vnet $spoke3id --labels default red --associated-route-table /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/RED --propagated-route-tables /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/RED /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/defaultRouteTable
az network vhub connection create --name spoke-4-hub-0 --resource-group Goudse --vhub-name hub-0 --remote-vnet $spoke4id --labels default red --associated-route-table /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/RED --propagated-route-tables /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/RED /subscriptions/7749fbb8-4096-4e85-8ad2-ef8182d01f02/resourceGroups/Goudse/providers/Microsoft.Network/virtualHubs/hub-0/hubRouteTables/defaultRouteTable
az network vhub connection create --name spoke-5-hub-1 --resource-group Goudse --vhub-name hub-1 --remote-vnet $spoke5id --labels default --no-wait
az network vhub connection create --name spoke-6-hub-1 --resource-group Goudse --vhub-name hub-1 --remote-vnet $spoke6id --labels default --no-wait
az network vhub connection create --name spoke-7-hub-1 --resource-group Goudse --vhub-name hub-1 --remote-vnet $spoke7id --labels default --no-wait
az network vhub connection create --name spoke-8-hub-1 --resource-group Goudse --vhub-name hub-1 --remote-vnet $spoke8id --labels default --no-wait

az network vhub connection create --name spoke-9-hub-2 --resource-group Goudse --vhub-name hub2 --remote-vnet $spoke9id --labels default --no-wait
az network vhub connection create --name spoke-10-hub-2 --resource-group Goudse --vhub-name hub2 --remote-vnet $spoke10id --labels default --no-wait
az network vhub connection create --name spoke-11-hub-2 --resource-group Goudse --vhub-name hub2 --remote-vnet $spoke11id --labels default --no-wait
az network vhub connection create --name spoke-12-hub-2 --resource-group Goudse --vhub-name hub2 --remote-vnet $spoke12id --labels default --no-wait




ef
