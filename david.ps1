# Script: 
# Author: David Armstrong
# Date of latest revision: 8-19-2020 
# Purpose: Retrieving Passwords for AWS instances if keys are known and .pem files are available

# Declare variables
# Location of .pem files
$KeyLoc="C:\Users\Violinist\Desktop\Key\hgorecki1.pem"
# Region of the instance
$Region="us-west-2"
# Instance to request Password for
$Instance = "i-0228f2db379bd373e"

# Access AWS server and retrieve the password
$password = Get-EC2PasswordData -InstanceId $Instance -PemFile $KeyLoc -Region $Region
echo $password


###Prep work###
# Install-Module -Name PSWindowsUpdate
# Install-Module -Name AWSPowerShell
# Set-AWSCredential -AccessKey <enter key> -SecretKey <enter key> -StoreAs default
