dir %WORKSPACE%
echo %USERNAME%
"C:\Program Files\IIS\Microsoft Web Deploy V3\MSDeploy.exe" -verb:sync -preSync:runCommand="%WORKSPACE%\presync.bat" -source:iisapp="%WORKSPACE%" -dest:iisapp="test.onlyoffice.co",computerName="35.174.218.204",UserName=%AccessKey%,Password=%SecretKey%, -postSync:runCommand="%WORKSPACE%\postsync.bat"
