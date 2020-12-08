FROM maven:3.6-openjdk-8-slim
LABEL maintainer="Lehlogonolo Masubelele"
WORKDIR /opt/bamboo
RUN apt-get update && \
    apt-get -y install git
CMD java -jar -Dbamboo.home=/opt/bamboo atlassian-bamboo-agent-installer-6.6.3.jar http://<bamboo-server>:<port>/agentServer/