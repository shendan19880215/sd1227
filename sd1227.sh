mkdir azagent;cd azagent;curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.206.1/vsts-agent-linux-x64-2.206.1.tar.gz;tar -zxvf vstsagent.tar.gz; if [ -x "$(command -v systemctl)" ]; then ./config.sh --environment --environmentname "test1227env" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/v-danshen/ --work _work --projectname 'test1227' --auth PAT --token yh7vnfgu4eaulov5pmknlqm6d46gwcdumzp4c56jeq3tbnqux7ga --runasservice; sudo ./svc.sh install; sudo ./svc.sh start; else ./config.sh --environment --environmentname "test1227env" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/v-danshen/ --work _work --projectname 'test1227' --auth PAT --token yh7vnfgu4eaulov5pmknlqm6d46gwcdumzp4c56jeq3tbnqux7ga; ./run.sh; fi
