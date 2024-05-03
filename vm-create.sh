az vm create -g $rgname -n g-spoke-0-1 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-0-1 --subnet default --image Win2022Datacenter
vmid01=$(az vm show -g $rgname -n g-spoke-0-1 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid01 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-0-2 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-0-2 --subnet default --image Win2022Datacenter
vmid02=$(az vm show -g $rgname -n g-spoke-0-2 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid02 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-0-3 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-0-3 --subnet default --image Win2022Datacenter
vmid03=$(az vm show -g $rgname -n g-spoke-0-3 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid03 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-0-4 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-0-4 --subnet default --image Win2022Datacenter
vmid04=$(az vm show -g $rgname -n g-spoke-0-4 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid04 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-1-5 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-1-5 --subnet default --image Win2022Datacenter
vmid15=$(az vm show -g $rgname -n g-spoke-1-5 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid15 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-1-6 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-1-6 --subnet default --image Win2022Datacenter
vmid16=$(az vm show -g $rgname -n g-spoke-1-6 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid16 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-1-7 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-1-7 --subnet default --image Win2022Datacenter
vmid17=$(az vm show -g $rgname -n g-spoke-1-7 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid17 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-1-8 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-1-8 --subnet default --image Win2022Datacenter
vmid18=$(az vm show -g $rgname -n g-spoke-1-8 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid18 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-branch-1 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-branch-1 --subnet default --image Win2022Datacenter
vmidb1=$(az vm show -g $rgname -n g-branch-1 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmidb1 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-branch-2 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-branch-2 --subnet default --image Win2022Datacenter
vmidb2=$(az vm show -g $rgname -n g-branch-2 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmidb2 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-2-9 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-2-9 --subnet default --image Win2022Datacenter
vmid29=$(az vm show -g $rgname -n g-spoke-2-9 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid29 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-2-10 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-2-10 --subnet default --image Win2022Datacenter
vmid210=$(az vm show -g $rgname -n g-spoke-2-10 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid210 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-2-11 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-2-11 --subnet default --image Win2022Datacenter
vmid211=$(az vm show -g $rgname -n g-spoke-2-11 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid211 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait

az vm create -g $rgname -n g-spoke-2-12 --admin-username AzureAdmin --admin-password $rgname-2024! --vnet-name g-spoke-2-12 --subnet default --image Win2022Datacenter
vmid212=$(az vm show -g $rgname -n g-spoke-2-12 --query "id" --output tsv)
az vm extension set --name customScriptExtension --publisher Microsoft.Compute --ids $vmid212 --settings '{"commandToExecute":"powershell -ExecutionPolicy Unrestricted Add-WindowsFeature Web-Server; powershell -ExecutionPolicy Unrestricted Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}' --no-wait
