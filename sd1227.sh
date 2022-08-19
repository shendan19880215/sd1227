#!/bin/bash
mkdir azagent
cd azagent
curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.206.1/vsts-agent-linux-x64-2.206.1.tar.gz
tar -zxvf vstsagent.tar.gz
if [ -x "$(command -v systemctl)" ]
then ./config.sh --environment --environmentname "test1227env" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/v-danshen/ --work _work --projectname 'test1227' --auth PAT --token 4462epe5ch7w2e3h4kj3yfpvn5czfar6ifm2jtxex666guypqosq --runasservice
sudo ./svc.sh install
sudo ./svc.sh start
else ./config.sh --environment --environmentname "test1227env" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/v-danshen/ --work _work --projectname 'test1227' --auth PAT --token 4462epe5ch7w2e3h4kj3yfpvn5czfar6ifm2jtxex666guypqosq
./run.sh
fi
