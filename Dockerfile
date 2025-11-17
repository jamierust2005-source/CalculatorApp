FROM jenkins/jenkins:lts-jdk17

USER root

# Install Python + pip + pytest + Docker CLI
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-venv \
        docker.io && \
    rm -rf /var/lib/apt/lists/*

# Install pytest via pip (container-only, safe to break system packages)
RUN pip3 install --break-system-packages --no-cache-dir pytest

# Make sure Jenkins user can talk to Docker
RUN groupadd -f docker && usermod -aG docker jenkins

USER jenkins

EXPOSE 8080 50000
