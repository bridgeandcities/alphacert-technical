# Run as Admin
#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
#Import-Module PowerShell-Get
Install-Module SqlServer
import-module SqlServer

$sqlServerName = "database1-server"
$dbName = "database1"
$query = "PRINT 'Hello World'"

Invoke-Sqlcmd -ServerInstance $sqlServerName -Database $dbName -Query $query -Username "test" -Password "Something1" -Verbose