az extension add --name virtual-wan

echo "# VNETGW: Get parameters from onprem vnet gateway"
vnetgwtunnelip1=$(az network vnet-gateway show -n g-branch-1-gw -g Goudse --query "bgpSettings.bgpPeeringAddresses[0].tunnelIpAddresses[0]" --output tsv)
echo "VNET GW Tunnel address #1:" $vnetgwtunnelip1
vnetgwtunnelip2=$(az network vnet-gateway show -n g-branch-1-gw -g Goudse --query "bgpSettings.bgpPeeringAddresses[1].tunnelIpAddresses[0]" --output tsv)
echo "VNET GW Tunnel address #2:" $vnetgwtunnelip2
vnetgwbgpip1=$(az network vnet-gateway show -n g-branch-1-gw -g Goudse --query "bgpSettings.bgpPeeringAddresses[0].defaultBgpIpAddresses"  --output tsv)
echo "VNET GW BGP address:" $vnetgwbgpip1
vnetgwbgpip2=$(az network vnet-gateway show -n g-branch-1-gw -g Goudse --query "bgpSettings.bgpPeeringAddresses[1].defaultBgpIpAddresses"  --output tsv)
echo "VNET GW BGP address:" $vnetgwbgpip2
vnetgwasn=$(az network vnet-gateway show -n g-branch-1-gw -g Goudse --query "bgpSettings.asn" --output tsv)
echo "VNET GW BGP ASN:" $vnetgwasn
sharedkey="goudse"

echo "# VWAN: Create remote site"
az network vpn-site create --name branch1 -g Goudse --ip-address $vnetgwtunnelip1 --virtual-wan vwan-0 --location swedencentral --device-model VNETGW --device-vendor Azure --asn $vnetgwasn --bgp-peering-address $vnetgwbgpip1 --link-speed 100 --with-link true
# az network vpn-site link add --name branch1-2 -g Goudse --ip-address $vnetgwtunnelip2 --site-name onprem1 --asn $vnetgwasn --bgp-peering-address $vnetgwbgpip2 --link-speed 100

echo "# VWAN: Create connection - remote site link to hub gw"
az network vpn-gateway connection create --gateway-name 29f39501b78545a29959db3200deca31-swedencentral-gw --name branch-1-connection  -g Goudse --remote-vpn-site branch1 --shared-key $sharedkey --enable-bgp true --no-wait

echo "# VWAN: Get parameters from VWAN Hub GW"
hubgwtunneladdress1=$(az network vpn-gateway show --name 29f39501b78545a29959db3200deca31-swedencentral-gw  -g Goudse --query "bgpSettings.bgpPeeringAddresses[?ipconfigurationId == 'Instance0'].tunnelIpAddresses[0]" --output tsv)
echo "Hub GW Tunnel address:" $hubgwtunneladdress1
hubgwbgpaddress1=$(az network vpn-gateway show --name 29f39501b78545a29959db3200deca31-swedencentral-gw  -g Goudse --query "bgpSettings.bgpPeeringAddresses[?ipconfigurationId == 'Instance0'].defaultBgpIpAddresses" --output tsv)
echo "Hub GW BGP address:" $hubgwbgpaddress1
hubgwtunneladdress2=$(az network vpn-gateway show --name 29f39501b78545a29959db3200deca31-swedencentral-gw  -g Goudse --query "bgpSettings.bgpPeeringAddresses[?ipconfigurationId == 'Instance1'].tunnelIpAddresses[0]" --output tsv)
echo "Hub GW Tunnel address2:" $hubgwtunneladdress2
hubgwbgpaddress2=$(az network vpn-gateway show --name 29f39501b78545a29959db3200deca31-swedencentral-gw  -g Goudse --query "bgpSettings.bgpPeeringAddresses[?ipconfigurationId == 'Instance1'].defaultBgpIpAddresses" --output tsv)
echo "Hub GW BGP address2:" $hubgwbgpaddress2

hubgwasn=$(az network vpn-gateway show --name 29f39501b78545a29959db3200deca31-swedencentral-gw  -g Goudse --query "bgpSettings.asn" --output tsv)
echo "Hub GW BGP ASN:" $hubgwasn

echo "# create local network gateway"
az network local-gateway create -g Goudse -n lng1-1 --gateway-ip-address $hubgwtunneladdress1 --location swedencentral --asn $hubgwasn --bgp-peering-address $hubgwbgpaddress1
az network local-gateway create -g Goudse -n lng1-2 --gateway-ip-address $hubgwtunneladdress2 --location swedencentral --asn $hubgwasn --bgp-peering-address $hubgwbgpaddress2

echo "# VNET GW: connect from vnet gw to local network gateway"
az network vpn-connection create -n branch-1-hub-0 --vnet-gateway1 g-branch-1-gw -g Goudse --local-gateway2 lng1-1 -l swedencentral --shared-key $sharedkey --enable-bgp
az network vpn-connection create -n branch-1-hub-0-2 --vnet-gateway1 g-branch-1-gw -g Goudse --local-gateway2 lng1-2 -l swedencentral --shared-key $sharedkey --enable-bgp