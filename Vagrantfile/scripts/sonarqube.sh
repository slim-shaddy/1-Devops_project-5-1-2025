dnf install -y docker
systemctl enable --now docker

docker run -d --restart always \
--name sonarqube -p 9000:9000 sonarqube:lts
