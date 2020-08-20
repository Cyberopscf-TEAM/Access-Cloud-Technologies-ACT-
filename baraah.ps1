# Script: ACT  Access Cloud Technologies
# Author: Baraah Hawari
# Date of latest revision: 20/8/2020 
# Purpose: Blocing file sharing (FTP ports)

# Declare variables
#create firewall rules that Block file sharing (FTP Protocol)
# Port #20
New-NetFirewallRule -DisplayName "Block Outbound Port 20" -Direction Outbound -LocalPort 20 -Protocol TCP -Action Block
$BlockPort20_Outbound=Enable-NetFirewallRule -DisplayName "Block Outbound Port 20"

New-NetFirewallRule -DisplayName "Block Inbound Port 20" -Direction Inbound -LocalPort 20 -Protocol TCP -Action Block
$BlockPort20_Inbound=Enable-NetFirewallRule -DisplayName "Block Inbound Port 20"

# Port #21
New-NetFirewallRule -DisplayName "Block Outbound Port 21" -Direction Outbound -LocalPort 21 -Protocol TCP -Action Block
$BlockPort21_Outbound=Enable-NetFirewallRule -DisplayName "Block Outbound Port 21"

New-NetFirewallRule -DisplayName "Block Inbound Port 21" -Direction Inbound -LocalPort 21 -Protocol TCP -Action Block
$BlockPort21_Outbound=Enable-NetFirewallRule -DisplayName "Block Inbound Port 21"
#=========calling the variables/ Enabeling the Ruels===================================================================
$BlockPort20_Outbound
$BlockPort20_Inbound
$BlockPort21_Outbound
$BlockPort21_Inbound

#==========Disable the Ruels=============================================================================================
$AllowPort20_Outbound=Disable-NetFirewallRule -DisplayName "Block Outbound Port 20"
$AllowPort20_Inbound=Disable-NetFirewallRule -DisplayName "Block Inbound Port 20"
$AllowPort21_Outbound=Disable-NetFirewallRule -DisplayName "Block Outbound Port 21"
$AllowPort21_Inbound=Disable-NetFirewallRule -DisplayName "Block Inbound Port 21"

#===============calling the variables/ Disabling the Ruels==================================================================
$AllowPort20_Outbound
$AllowPort20_Inbound
$AllowPort21_Outbound
$AllowPort21_Inbound


#Get-NetFirewallRule -Action Block -Enabled True
