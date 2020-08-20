# Script: 
# Author: David Armstrong
# Date of latest revision: 8-20-2020 
# Purpose: Retrieving Passwords for AWS instances if keys are known and .pem files are available

# Declare variables

# Location of .pem files
$KeyLoc="C:\Users\Violinist\Desktop\Key\hgorecki1.pem"

# Location of the instances file containing instance Ids and keys
$Instances = 'C:\Users\Violinist\Desktop\Key\Instances.txt'

# Location of the password file
$paSSwordfile = "C:\Users\Violinist\Desktop\Key\Passwords.txt"

# Region of the instances
$Region="us-west-2"


#Declare Functions

# Allow connection to the instance thru PowerShell
function credentialize (){
 get-content $Instances | foreach-object {
  $data = $_ -split " " 
  # Retrieve the keys from the array
  $AccKey = $data[3]
  $SecKey = $data[4]
  $Instance = $data[2]
  # Verify Credential using the keys
  Set-AWSCredential -AccessKey $AccKey -SecretKey $SecKey -StoreAs default
  # Access AWS server and retrieve the password
  $password = Get-EC2PasswordData -InstanceId $Instance -PemFile $KeyLoc -Region $Region
  echo "Instance Id: $Instance" "Password: $password" >> $paSSwordfile
 } 
}

# Main

# Create password file
New-Item $paSSwordfile -ItemType file -Force

# Run the credential verification, retrieve passwords, and write to the new file
credentialize



###Prep work###
# Install-Module -Name PSWindowsUpdate
# Install-Module -Name AWSPowerShell
