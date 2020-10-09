FROM python:3.8-slim-buster

USER root
WORKDIR /root

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install bzip2

RUN groupadd --gid 1000 bril && \
    useradd --gid 1000 --uid 1000 -G root bril && \
    echo "bril ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers

WORKDIR /home/bril

RUN chown -R bril /home/bril && \
    chmod 755 /home/bril

USER bril
ENV USER bril
ENV HOME /home/bril

RUN wget https://cern.ch/cmslumisw/installers/linux-64/Brilconda-1.1.7-Linux-x86_64.sh && \
    bash Brilconda-1.1.7-Linux-x86_64.sh -b -p brilconda

ENV PATH $HOME/.local/bin:$HOME/brilconda/bin:$PATH
RUN pip install brilws

CMD ["/bin/bash"]

