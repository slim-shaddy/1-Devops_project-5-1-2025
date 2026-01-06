dnf install -y java-17-openjdk docker git
systemctl enable --now docker

wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
dnf install -y jenkins
systemctl enable --now jenkins

# Disable setup wizard
echo 'JAVA_OPTS="-Djenkins.install.runSetupWizard=false"' >> /etc/sysconfig/jenkins
systemctl restart jenkins

# Install plugins
sleep 30
jenkins-plugin-cli --plugins \
git workflow-aggregator sonar terraform aws-credentials
