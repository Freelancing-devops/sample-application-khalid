# sample-application-khalid
This is a testing repo for a sample application

## In this repository I have provisioned a small Node.js application in Azure App Services. Also I have created the Azure App Service's Infrastructure using Terraform and setup a deployment pipeline using GitHub Actions. 
A sample app file here is app.js and If we need to setup the Infrastructure IaC service out of this configuration then we just need to select the terraform from the workflow dispatch. 
Some key points : 
   1. There are two jobs in the GitHub Workflow a. Build b. Deploy.
   2. You can select the Terraform to deploy with the same configuration in the Azure for Azure App service. It will deploy the same application with the required infrastrucre in the Azure App Service. 
   3. You need to change the Resource group name and Subscription ID (If you want to deploy the new application in some new place in Azure) also with a new App name. 
