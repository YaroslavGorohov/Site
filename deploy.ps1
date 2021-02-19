get-psdrive
echo  $env:SecretKey
echo CVS_BRANCH
echo $ENV:CVS_BRANCH
echo 1
echo $env:GIT_BRANCH
echo 2
echo $GIT_BRANCH
echo 3
sh "printenv"
echo 4
echo "printenv"
echo 5
echo $env:BRANCH_NAME
echo 6
echo "\$env:BRANCH_NAME"
echo 7
"\$env:BRANCH_NAME"
echo 8
#Set-AWSCredentials -AccessKey $Env:AccessKey -SecretKey $Env:SecretKey
echo  %SecretKey%
