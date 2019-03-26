### Define Deployment Variables

$location = 'eastus'
$resourceGroupName = 'rg-template'
$resourceDeploymentName = 'contoso-iaas-deployment'
$templatePath = '.\'
$templateFile = 'contosoIaaS_3.json'
$template = $templatePath + '\' + $templateFile
$password = "C0nts0sP@55"
$securePassword = $password | ConvertTo-SecureString -AsPlainText -Force


### Deploy Resources


New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force


