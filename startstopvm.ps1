param(
    [string]$Action
)

$rgName = "azuretest_rg"
$vmName = "azuretest"

if ($Action -eq "Start") {
    # Start-AzVM -ResourceGroupName $rgName -Name $vmName
    az vm start --resource-group "azuretest_rg" --name "azuretest"
    Write-Host "VM started successfully"
}
elseif ($Action -eq "Stop") {
    # Stop-AzVM -ResourceGroupName $rgName -Name $vmName -Force
    az vm deallocate --resource-group "azuretest_rg" --name "azuretest"
    Write-Host "VM stopped successfully"
}
else {
    Write-Host "Invalid action. Use Start or Stop."
}
