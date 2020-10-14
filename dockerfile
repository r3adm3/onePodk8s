FROM ubuntu
RUN apt-get update
RUN apt-get install openssh-server iputils-ping curl iproute2 dnsutils lsof net-tools -y
EXPOSE 22
RUN useradd daed
RUN echo daed:s@usages | chpasswd
ENTRYPOINT ["tail", "-f", "/dev/null"]