get-psdrive
echo  $env:SecretKey 
Set-AWSCredentials -AccessKey $Env:AccessKey -SecretKey $Env:SecretKey
echo  %SecretKey%
