FROM jenkins/jenkins:lts-jdk17

# Run everything as root
USER root

# Install Python + pip + pytest + Docker CLI
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-venv \
        docker.io && \
    rm -rf /var/lib/apt/lists/*

# Install pytest
RUN pip3 install --break-system-packages --no-cache-dir pytest

EXPOSE 8080 50000
