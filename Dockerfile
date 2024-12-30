# Use the official Kali Linux Docker image
FROM kalilinux/kali-rolling

# Update the package list and install the core metapackage
RUN apt update && \
    apt full-upgrade -y && \
    apt -y install kali-linux-core && \
    apt clean

# Set the default command to run when starting the container
CMD ["/bin/bash"]