#SCALE UP SIZE
##Kingston Burrowes Variables
$resourceGroup = "WVD"
$vmName = "KB-WVD-HPv4-0"

##Re-Size VM to E8s_v4s
$vm = Get-AzVM -ResourceGroupName $resourceGroup -VMName $vmName
$vm.HardwareProfile.VmSize = "E8s_v4"
Update-AzVM -VM $vm -ResourceGroupName $resourceGroup
