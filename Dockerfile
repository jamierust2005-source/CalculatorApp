# Start from the official Jenkins LTS image (with JDK 17)
FROM jenkins/jenkins:lts-jdk17

# Switch to root to install packages
USER root

RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*

# Install Python 3, pip, and any build tools you might need
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    rm -rf /var/lib/apt/lists/*

# Install pytest globally (or you can do this in a venv in your pipeline)
RUN pip3 install --break-system-packages --no-cache-dir pytest

# (Optional) Show versions for debug
RUN python3 --version && pip3 --version && pytest --version

# Switch back to jenkins user for security
USER jenkins

# Jenkins already exposes 8080 (web) and 50000 (agent port)
EXPOSE 8080 50000
