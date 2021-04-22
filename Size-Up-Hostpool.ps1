#SCALE UP SIZE
##Kingston Burrowes Variables
$resourceGroup = "WVD"
$vmName = "KB-WVD-HPv4-0"

##Re-Size VM to B2ms
$vm = Get-AzVM -ResourceGroupName $resourceGroup -VMName $vmName
$vm.HardwareProfile.VmSize = "Standard_D8s_v3"
Update-AzVM -VM $vm -ResourceGroupName $resourceGroup
