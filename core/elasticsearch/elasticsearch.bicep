metadata description = 'Bicep Module for Elastic Monitor & Elastic Monitor Tag Rules.'
param monitorName string
param monitorTagRuleName string
param location string
param firstName string
param lastName string
param emailAddress string
param country string
param domain string
param sku string

resource elasticsearchmonitor 'Microsoft.Elastic/monitors@2022-07-01-preview' = {
  name: monitorName
  location: location
  sku: {
    name: sku
  }
  properties: {
    userInfo: {
      companyInfo: {
        country: country
        domain: domain
      }
      companyName: 'DefaultDirectory'
      emailAddress: emailAddress
      firstName: firstName
      lastName: lastName
    }
    version: '8.10.4'
  }
}

resource elasticsearchtagrules 'Microsoft.Elastic/monitors/tagRules@2022-07-01-preview' = {
  name: monitorTagRuleName
  parent: elasticsearchmonitor
  properties: {
    logRules: {
      filteringTags: [
      ]
      sendAadLogs: false
      sendActivityLogs: true
      sendSubscriptionLogs: true
    }
  }
}
