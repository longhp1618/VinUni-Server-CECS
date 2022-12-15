FROM ubuntu:20.04
RUN apt update && apt install openssh-server sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd
#RUN sed -i "s/PermitRootLogin prohibit-password/PermitRootLogin yes" /etc/ssh/sshd_config
RUN echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
RUN echo "AuthorizedKeysFile %h/.ssh/authorized_keys" >> /etc/ssh/sshd_config 
RUN sed 's@session\s*required\s*spam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN ssh-keygen -A
RUN /etc/init.d/ssh start
USER ubuntu
WORKDIR /home/ubuntu
RUN mkdir -p /home/ubuntu/.ssh
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
