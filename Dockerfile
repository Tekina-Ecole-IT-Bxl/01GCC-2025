FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    bash \
    bash-completion \
    locales \
    sudo \
    gcc \
    gdb \
    make \
    build-essential \
    nano \
    vim \
    less \
    openssh-server \
    man \
    manpages-dev \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=fr_FR.UTF-8

ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8

RUN useradd -ms /bin/bash dev && echo "dev:dev" | chpasswd && adduser dev sudo


RUN echo "source /etc/bash_completion" >> /home/dev/.bashrc


RUN mkdir /var/run/sshd
RUN echo "PermitRootLogin no" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
