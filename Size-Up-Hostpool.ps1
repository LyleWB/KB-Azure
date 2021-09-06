#SCALE UP SIZE
##Kingston Burrowes Variables
$resourceGroup = "WVD"
$vmName = "KB-WVD-HPv4-1"

##Re-Size VM to E8s_v3
$vm = Get-AzVM -ResourceGroupName $resourceGroup -VMName $vmName
$vm.HardwareProfile.VmSize = "Standard_E8s_v3"
Update-AzVM -VM $vm -ResourceGroupName $resourceGroup
