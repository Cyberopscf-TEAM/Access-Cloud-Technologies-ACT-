# this script have 
#1. the command that will show the user the Listining Ports
#2. the command that will show the allowed and blocked firewall ports protocols
#3. Create a firewall role to block and allow trafiic (network) for both (Inbound and Outbound) (wired and wireless)
#====================================================================================================================
#Get all ports
Get-NetTCPConnection
# Get all the listining ports
Get-NetTCPConnection -State Listen
#=====================================================================================================================
#======================================Wireless====================================================================================================
#create firewall rules that ===Block==== all of the wireless network traffic.
New-NetFirewallRule -Name "Block Wireless In"  -DisplayName "Block Wireless In"  -Direction Inbound -InterfaceType Wireless -Action Block
New-NetFirewallRule -Name "Block Wireless Out" -DisplayName "Block Wireless Out" -Direction Outbound -InterfaceType Wireless -Action Block

#create firewall rules that ===Allow==== all of the wireless network traffic.
New-NetFirewallRule -Name "Allow Wireless In"  -DisplayName "Allow Wireless In" -Direction Inbound -InterfaceType Wireless -Action Allow
New-NetFirewallRule -Name "Allow Wireless Out" -DisplayName "Allow Wireless Out" -Direction Outbound -InterfaceType Wireless -Action Allow

#enable rules
Enable-NetFirewallRule -DisplayName "Block Wireless In"
Enable-NetFirewallRule -DisplayName "Block Wireless Out"

Enable-NetFirewallRule -DisplayName "Allow Wireless In"
Enable-NetFirewallRule -DisplayName "Allow Wireless Out"

#Disable the Rules
Disable-NetFirewallRule -DisplayName "Block Wireless In"
Disable-NetFirewallRule -DisplayName "Block Wireless Out"

#===================================Wired============================================================================================

#create firewall rules that ===Block==== all of the wired network traffic.
New-NetFirewallRule -Name "Block Wired In"  -DisplayName "Block Wired In"  -Direction Inbound -InterfaceType Wired -Action Block
New-NetFirewallRule -Name "Block Wired Out" -DisplayName "Block Wired Out" -Direction Outbound -InterfaceType Wired -Action Block

#create firewall rules that ===Allow==== all of the Wired network traffic.
New-NetFirewallRule -Name "Allow Wired In"  -DisplayName "Allow Wired In" -Direction Inbound -InterfaceType Wired -Action Allow
New-NetFirewallRule -Name "Allow Wired Out" -DisplayName "Allow Wired Out" -Direction Outbound -InterfaceType Wired -Action Allow

#enable rules
Enable-NetFirewallRule -DisplayName "Block Wired In"
Enable-NetFirewallRule -DisplayName "Block Wired Out"

Enable-NetFirewallRule -DisplayName "Allow Wired In"
Enable-NetFirewallRule -DisplayName "Allow Wired Out"

#Disable the Rules
Disable-NetFirewallRule -DisplayName "Block Wired In"
Disable-NetFirewallRule -DisplayName "Block Wired Out"
