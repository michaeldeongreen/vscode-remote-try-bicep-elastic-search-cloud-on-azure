# TODO
- Make version a paramer
- Change to az deployment group create -f ./main.bicep -g <resourcegroup> -p firstName=<firstname> lastName=<lastname> emailAddress=<emailaddress> domain=<domain>
- Complete the *Next Steps* section, which has screen shots

# Bicep Authoring Devcontainer

This is a simple devcontainer that is a fork and rename of [vscode-remote-try-bicep](https://github.com/Azure/vscode-remote-try-bicep).  This devcontainer demonstrates how to deploy [Elastic Cloud on Azure](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/elastic.ec-azure-pp?tab=overview) using bicep.  The code can be used with CodeSpaces or VSCode Remote to get all the tooling needed to start authoring bicep.

## Prerequisites
1. [An Azure subscription](https://azure.microsoft.com/) & the proper azure [role](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles) to deploy Elastic Cloud
1. [An Elastic Cloud account](https://www.elastic.co/)

## Bicep Parameters
1. location: Azure Region *(default: eastus)*.
1. monitorName: Elastic Search monitor name *(default: eona-azsamples-bicep-tutorial)*.
1. firstName: User first name *(required)*.
1. lastName: User last name *(required)*.
1. emailAddress: User email address *(required)*.
1. country: User country *(default: US)*.
1. domain: Azure AD domain *(required)*.
1. sku: Elastic Search monitor sku *(required)*.

## Quick Start: VSCode Remote
1. Clone the repository.
1. Configure the development environment by installing VSCode and the "Remote - Containers" extension. [Quick start docs here](https://code.visualstudio.com/docs/remote/containers-tutorial).
1. Open the repository in VSCode
1. [`CTRL+SHIFT+P` then type `Reopen in container`](https://code.visualstudio.com/docs/remote/containers#_getting-started) to open the devcontainer in VSCode.
1. [Open a terminal in VSCode with `CTRL+SHIFT+P` -> `Terminal: Create new integrated terminal`](https://code.visualstudio.com/docs/remote/containers#_opening-a-terminal). We'll use this to run Bicep commands.
1. [Run `az login`](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli) from the VSCode terminal to connect to your Azure account.
1. Run the following to create a resource group and deploy your Bicep file to it.
    ```sh
    az group create -n my-rg -l eastus
    az deployment group create -f ./main.bicep -g my-rg
    ```
1. Open [main.bicep](./main.bicep) in to modify the resources you want to deploy, and re-run the `az deployment group` command to re-deploy the resources.

## Quick Start: Codespaces
1. Open this repository in [GitHub Codespaces](https://github.com/features/codespaces).
1. Open a terminal in VSCode with `CTRL+J`. We'll use this to run Bicep commands.
1. [Run `az login`](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli) from the VSCode terminal to connect to your Azure account.
1. Run the following to create a resource group and deploy your Bicep file to it.
    ```sh
    az group create -n my-rg -l eastus
    az deployment group create -f ./main.bicep -g my-rg
    ```
1. Open [main.bicep](./main.bicep) in your Codespaces window to modify the resources you want to deploy, and re-run the `az deployment group` command to re-deploy the resources.

## Next Steps

## Misc.

Review [the Bicep documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview) to build out more advanced scenarios.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
