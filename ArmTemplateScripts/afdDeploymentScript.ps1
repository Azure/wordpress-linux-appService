# This script is used to retrieve AFD ednpoint default hostname during WordPress (on App Service) ARM template deployments
param(
[string] [Parameter(Mandatory=$true)] $resourceGroup,
[string] [Parameter(Mandatory=$true)] $afdProfile,
[string] [Parameter(Mandatory=$true)] $afdEndpoint
)

Connect-AzAccount
$ErrorActionPreference = 'Stop'
$DeploymentScriptOutputs = @{}
$afdEndpointReturnValue = Get-AzFrontDoorCdnEndpoint -EndpointName $afdEndpoint -ProfileName $afdProfile -ResourceGroupName $resourceGroup
$DeploymentScriptOutputs['afdHostName'] = $afdEndpointReturnValue.HostName

