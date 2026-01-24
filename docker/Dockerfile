FROM jenkins/jenkins:lts
LABEL maintainer="Devops Project shubhamchanda.in"

# Switch to root to install packages
USER root
ARG DEBIAN_FRONTEND=noninteractive
RUN set -eux; \
		apt-get update; \
		apt-get install -y --no-install-recommends maven git curl unzip ca-certificates; \
		rm -rf /var/lib/apt/lists/*;

# Jenkins home and persistent volume
ENV JENKINS_HOME=/var/jenkins_home
VOLUME [ "/var/jenkins_home" ]

# Expose Jenkins ports
EXPOSE 8080 50000

# Basic healthcheck for Jenkins web UI
HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 \
	CMD curl -f http://127.0.0.1:8080/login || exit 1

# Ensure container runs as the Jenkins user
USER jenkins