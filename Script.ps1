
sfdx force:org:list
sfdx force:auth:jwt:grant --clientid 3MVG9vrJTfRxlfl5_X69tD1NJRHfCM3xpKa0SVPIz60RAP2M3rJ.Q7B5ucNYIfbtCkU4syn7fsoulvujk8VsV --jwtkeyfile c:\users\lust\server.key --username sfdx997@gmail.com --setdefaultdevhubusername --setalias JenkinsDevHub
sfdx force:org:create -s -f config/project-scratch-def.json -a JenkinsScratchOrg
sfdx force:source:push
sfdx force:apex:test:run -r human
sfdx force:org:delete -u JenkinsScratchOrg --noprompt
sfdx force:org:list