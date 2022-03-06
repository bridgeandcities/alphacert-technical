# alphacert-technical
 Technical interview question answers
 
 Pre-requisites:
 * Azure account (free tier) with SQL db created with basic SQL authentication and your IP (or the IP of the Azure Pipeline Agent(s)) whitelisted
 * Azure DevOps organisation created with a self-hosted agent setup in a Pool
 * GitHub repository created and linked to Azure DevOps/Pipelines in the organisation
 * Powershell with Administrator privileges with the "SqlServer" module installed on your agent (in this case my personal laptop)

Improvements:
 * Use an Azure key vault to store the db connection string/password. I've directly committed and pushed the connection string to master into a public repo and that is absolutely the wrong thing to do.
 * Write some sort of automated test to check if the outcome is correct. Currently the testing method is to manually connect to the db and run 'Select * from [dbo].[FizzBuzzResults];'.
 * Implement git flow so that the code goes through peer reviews and into a develop branch before merging to master for releases instead of going straight to master.
