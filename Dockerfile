FROM centos:latest
RUN yum install openssh-server -y
RUN echo "root:password" | chpasswd
RUN ssh-keygen -A
#CMD ["/usr/sbin/sshd","-D"]
RUN echo /usr/sbin/sshd > /root/.bashrc
CMD ["bin/bash"]
#EXPOSE 22 ->  
