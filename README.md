# sample-application-khalid
This is a testing repo for a sample application

## In this repository I have provisioned a small Node.js application in Azure App Services. Also I have created the Azure App Service's Infrastructure using Terraform and setup a deployment pipeline using GitHub Actions. 
A sample app file here is app.js and If we need to setup the Infrastructure IaC service out of this configuration then we just need to select the terraform from the workflow dispatch. 
Some key points : 
   1. There are two jobs in the GitHub Workflow a. Build b. Deploy.
   2. You can select the Terraform to deploy with the same configuration in the Azure for Azure App service. It will deploy the same application with the required infrastrucre in the Azure App Service. 
   3. You need to change the Resource group name and Subscription ID (If you want to deploy the new application in some new place in Azure) also with a new App name. 

Incident scenario: Users had experienced high latency when accessing the application in Azure App Service, and some users received "Request Timeout" errors.

Detection: Azure provided various monitoring tools that helped detect issues. For detecting this incident, I relied on Azure Monitor and its Application Insights feature.
I enabled Application Insights for my application:
• I navigated to my Azure App Service in the Azure Portal.
• I went to "Application Insights" under the "Monitoring" section in the left pane.
• I turned on "Enable Application Insights" and created a new Application Insights resource or connected to an existing one.
Diagnosis: Once Application Insights was enabled and collecting data, I could use its powerful analytics tools to diagnose the incident.
• I went to my Application Insights resource in the Azure Portal.
• Under "Investigate," I clicked on "Performance."
• Here, I could see the overall performance and the most time-consuming requests.
• I observed if there was a particular request or operation that caused the latency.
• If necessary, I dived deeper into individual requests and examined the full details, including the request duration, failed requests, and other metrics.
Resolution: After diagnosing the root cause of the incident, I proceeded with resolution. In this case, I assumed that the root cause of the latency and timeout issues was the excessive number of database queries.
To resolve the issue, I took the following steps:
• I optimized database queries in my application code.
• I implemented caching mechanisms to reduce the need for frequent database queries.
• If the issue persisted, I considered scaling up the application by increasing resources or moving to a higher tier of the Azure App Service Plan.
• After implementing the changes, I redeployed my application and monitored the performance to ensure the issue was resolved.
In summary, the Azure ecosystem provided tools like Azure Monitor and Application Insights that helped me detect, diagnose, and resolve incidents in my application hosted on Azure App Services. By leveraging these tools, I could ensure that my application maintained optimal performance and a positive user experience.
