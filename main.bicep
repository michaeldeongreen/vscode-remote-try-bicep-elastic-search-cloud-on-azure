metadata description = 'Bicep file that creates an Elastic Cloud on Azure Cluster.'

@allowed([
  'canadaeast'
  'eastus'
  'eastus2'
  'francecentral'
  'switzerlandnorth'
  'uksouth'
  'japaneast'
  'northcentralus'
  'australiaeast'])
@description('Azure Region')
param location string = 'eastus'

@description('Elastic Search monitor name.')
param monitorName string = 'eona-azsamples-bicep-tutorial'

@description('User first name.')
param firstName string

@description('User last name.')
param lastName string

@description('User email address.')
param emailAddress string

@description('User country.')
param country string = 'US'

@description('The Azure AD directory domain i.e. yourcompany.onmicrosoft.com')
param domain string

@description('Elastic Search monitor sku.')
param sku string = 'ess-consumption-2024_Monthly@TIDgmz7xq9ge3py'

@description('Elastic Search monitor version.')
param version string = '8.10.4'

module elasticsearch 'core/elasticsearch/elasticsearch.bicep' = {
  name: 'elasticsearch'
  params: {
    monitorName: monitorName
    monitorTagRuleName: 'default'
    location: location
    firstName: firstName
    lastName: lastName
    emailAddress: emailAddress
    country: country
    domain: domain
    sku: sku
    version: version
  }
}
