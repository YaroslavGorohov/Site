dir %WORKSPACE%
"C:\Program Files\IIS\Microsoft Web Deploy V3\MSDeploy.exe" -verb:sync -preSync:runCommand="%WORKSPACE%\presync.bat" -source:iisapp="%WORKSPACE%" -dest:iisapp="test.onlyoffice.co",computerName="35.174.218.204",UserName=.\yaroslav.gorohov,Password="Ujhyjfknfqcr1238", -postSync:runCommand="%WORKSPACE%\postsync.bat"
