# Use a rolling image
FROM kalilinux/kali-rolling

# Update and install core OS features
RUN apt-get update -q -y && \
    apt-get full-upgrade -q -y && \
    apt-get install kali-linux-core -q -y

# Install nmap
RUN apt-get install nmap -q -y

# Remove cache to reduce used space
RUN apt-get clean

CMD ["/bin/bash"]