# Select the Key used during the Encryption process on "C:\", Run as Administrator is required!
$AllProtectors = (Get-BitlockerVolume -MountPoint $env:SystemDrive).KeyProtector
$RecoveryProtector = ($AllProtectors | where-object { $_.KeyProtectorType -eq "RecoveryPassword" })

#Save the Key on the Cloud, the user will need the permission to save the Key on Cloud
BackupToAAD-BitLockerKeyProtector $env:SystemDrive -KeyProtectorId $RecoveryProtector.KeyProtectorId 
