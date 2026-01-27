FROM jenkins/jenkins:lts-jdk21

user root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    git \
    curl \
    unzip \
    ca-certificates \
    gnupg \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    curl \
    sudo && \
    curl -fsSL https://get.docker.com -o install-docker.sh && \
    sudo sh install-docker.sh && \
    sudo usermod -a -G docker jenkins

expose 8080