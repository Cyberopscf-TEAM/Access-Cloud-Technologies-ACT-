# Backup Script for Inlander DATA Using Robocopy to Remote Destination


#Set-ExecutionPolicy Unrestricted

$Inlander_backupsc = 'C:\Users\User\Documents\Inlander_source' # Inlander local data files
$Inlander_destination = 'C:\Users\IEUser\Desktop\Share'        #Inlander remote data files
$Inlander_log = 'C:\Users\User\Documents\Inlander_log.txt'   #Inlander data analysis log remote

ROBOCOPY $Inlander_backupsc $Inlander_destination /Copyall /E /ZB /DCOPY:DAT /R:3 /W:15 /LOG:$Inlander_log

