docker run -d -p 8153:8153 \
	--name gocd-server \
	-v /root/deploykey/gocd-server/.ssh:/var/go/.ssh \
	-v /var/run/docker.sock:/var/run/docker.sock \
	gocd

docker run -d \
	--link gocd-server:server \
	-v /root/deploykey/gocd-agent/.ssh:/root/.ssh \
	-v /data/gocd-pipelines:/pipelines \
	-v /var/run/docker.sock:/var/run/docker.sock \
	gocd-agent

