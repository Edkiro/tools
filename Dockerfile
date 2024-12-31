# Use a rolling image
FROM kalilinux/kali-rolling

# Update and install core OS features
RUN apt update && \
    apt full-upgrade -y && \
    apt -y install kali-linux-core

# Install nmap
RUN apt -y install nmap

# Remove cache to reduce used space
RUN apt clean

CMD ["/bin/bash"]