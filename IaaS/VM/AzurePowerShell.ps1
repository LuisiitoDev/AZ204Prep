$username = 'demoadmin'
$password = ConvertTo-SecureString 'password1234' -AsPlainText -Force
$WindowsCred = New-Object System.Management.Automation.PSCredential ($username,$password)

New-AzResourceGroup -Name "psdemo-rg" -Location "CentralUS"

New-AzVM `
    -ResourceGroupName 'psdemo-rg' `
    -Name 'psdemo-win-az' `
    -Image 'Win2019Datacenter' `
    -Credential $WindowsCred `
    -OpenPorts 3389

Get-AzPublicIpAddress `
    -ResourceGroupName 'psdemo-rg' `
    -Name 'psdemo-win-az' | Select-Object IpAddress `
