# Run as Admin
#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
#Import-Module PowerShell-Get
#Install-Module SqlServer
Import-Module SqlServer

$sqlFile = "SQLQuery_1.sql"
$pw = "Something1"
$dbConnectionString = "Server=tcp:database1-server.database.windows.net,1433;Initial Catalog=database1-db;Persist Security Info=False;User ID=test;Password=$pw;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"

Invoke-Sqlcmd -InputFile $sqlFile -ConnectionString $dbConnectionString -Verbose