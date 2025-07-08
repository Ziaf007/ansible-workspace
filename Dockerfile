FROM python:3.10-slim

# Install system dependencies: vim and any required system packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends vim && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Ansible
RUN pip install --upgrade pip && \
    pip install ansible

# Install Cisco ACI Ansible Collection
RUN ansible-galaxy collection install cisco.aci

# Set the workspace directory inside the container
WORKDIR /workspace

# Set default command to bash shell
CMD ["/bin/bash"]
