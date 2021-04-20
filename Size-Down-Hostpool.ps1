#SCALE DOWN SIZE
##Kingston Burrowes Variables
$resourceGroup = "WVD"
$vmName = "KB-WVD-HPv4-0.ad.kingstonaccountants.co.uk"

##List available VM sizes (optional)
Get-AzVMSize -ResourceGroupName $resourceGroup -VMName $vmName

##Re-Size VM to B2ms
$vm = Get-AzVM -ResourceGroupName $resourceGroup -VMName $vmName
$vm.HardwareProfile.VmSize = "Standard_B2ms"
Update-AzVM -VM $vm -ResourceGroupName $resourceGroup