$date = Get-Date -format yyyyMMddHHmmss

cd C:\Users\marswh\AppData\Roaming\gnupg

gpg --refresh-keys

gpg --list-keys | Out-File pubkeys.txt

gpg --list-secret-keys | Out-File seckeys.txt

Compress-Archive pubring.gpg, secring.gpg, gpg.conf, pubkeys.txt, seckeys.txt, *.pem -CompressionLevel Optimal -DestinationPath "gpg_$date.bak.zip"

Copy-Item gpg_$date.bak.zip F:\gpg_$date.bak.zip