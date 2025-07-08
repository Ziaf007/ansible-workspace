FROM python:3.10-slim

# Install Ansible and the ACI Collection
RUN pip install --upgrade pip \
    && pip install ansible \
    && ansible-galaxy collection install cisco.aci

# Set working directory inside the container
WORKDIR /workspace

# Default command: open shell
CMD ["/bin/bash"]
