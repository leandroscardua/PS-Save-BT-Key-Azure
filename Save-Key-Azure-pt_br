# Seleciona o a chave utilizada durante o processo de encriptação do Disco do sistema "C:\" , o usuario precisa ser administrator
$AllProtectors = (Get-BitlockerVolume -MountPoint $env:SystemDrive).KeyProtector
$RecoveryProtector = ($AllProtectors | where-object { $_.KeyProtectorType -eq "RecoveryPassword" })

#Salvar a chave salva anteriormente na nuvem, precisa esta logado com um usuario com permissiao para salvar na nuvem.
BackupToAAD-BitLockerKeyProtector $env:SystemDrive -KeyProtectorId $RecoveryProtector.KeyProtectorId 
