get-psdrive
echo  $env:SecretKey
echo CVS_BRANCH
echo $ENV:CVS_BRANCH
echo 1
"\$env:BRANCH_NAME"
echo 2
echo "\$env:BRANCH_NAME"
echo 3
final scmVars = checkout(scm)			scmInfo = checkout scm
echo "scmVars: ${scmVars}"		        echo "scm : ${scmInfo}"
echo "scmVars.GIT_COMMIT: ${scmVars.GIT_COMMIT}"			echo "${scmInfo.GIT_COMMIT}"
echo "scmVars.GIT_BRANCH: ${scmVars.GIT_BRANCH}"
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
