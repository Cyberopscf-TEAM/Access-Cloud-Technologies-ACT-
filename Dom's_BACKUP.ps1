# Backup Script for Inlander DATA Using Robocopy to Remote Destination


#Set-ExecutionPolicy Unrestricted

# Location of source data
$Inlander_backupsc = 'C:\Users\User\Documents\Inlander_source' # Inlander local data files

# Location of destination for data file
$Inlander_destination = 'C:\Users\User\Desktop\'        #Inlander remote data files

# Log for data that has been sent to destination 
$Inlander_log = 'C:\Users\User\Documents\Inlander_log.txt'   #Inlander data analysis log remote

# file backup script
ROBOCOPY $Inlander_backupsc $Inlander_destination /Copyall /E /ZB /DCOPY:DAT /R:3 /W:15 /LOG:$Inlander_log

