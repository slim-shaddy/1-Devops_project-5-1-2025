dnf install -y docker
systemctl enable --now docker

docker run -d --restart always \
--name nexus -p 8081:8081 sonatype/nexus3
