# ansible-workspace
Container setup for quick deployment of an Ansible workspace with ACI Collection.

# NOTE: Please install podman for your device first. Docker needs licensing, but Podman is Open-Source.
https://podman.io/docs/installation

# Instructions to Deploy
1. Make/Choose a directory in your device for ansible
```
  mkdir ansible-workspace
```
2. Download the Dockerfile in this repo to that directory.
3. Build the Container from the same directory
```
  podman build -t aci-ansible .
```
4. Run the container once it is built
```
  podman run -it --rm -v "$PWD:/workspace" aci-ansible
```
