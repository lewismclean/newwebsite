param websiteName string = 'lewismclean'
param location string = 'westeurope'
param createdDate string = '07/08/2022'
param latestDeploy string = utcNow('d')



var sku = 'Free'



resource swaLewis 'Microsoft.Web/staticSites@2022-03-01' = {
  name: websiteName
  location: location
  tags: {
    DateCreated: createdDate
    LastDeployed: latestDeploy
  }
  properties: {
    
  }
  sku: {
    name: sku
    size: sku
  }
}
