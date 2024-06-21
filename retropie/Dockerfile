FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y \
  && apt install -y --no-install-recommends ca-certificates lsb-release git dialog unzip xmlstarlet \
  subversion curl gcc g++ build-essential python3-pyudev dirmngr \
  software-properties-common xvfb fluxbox x11vnc sudo deepin-terminal xauth xorg openbox gpg-agent
  
RUN sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
RUN wget -O- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/linux_signing_key.pub
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13
RUN sudo apt-get update && apt install -y google-chrome-stable

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

#RUN addgroup --system --gid 1001 atom
#RUN adduser --system --uid 1001 atom
RUN echo 'docker ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker
WORKDIR /home/retropi
#RUN chown atom:atom /RetroPie-Setup

#RUN git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
#RUN chmod +x ./RetroPie-Setup/retropie_setup.sh
#RUN cd RetroPie-Setup
#RUN chown -R atom:atom ./

#USER atom

RUN git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git 




#COPY entrypoint.sh /home/retropi
#ENTRYPOINT ["/home/retropi/entrypoint.sh"]
RUN sudo dpkg-reconfigure -phigh xserver-xorg

ENV DISPLAY :1
CMD Xvfb :1 -screen 0 1280x1024x16 & fluxbox & x11vnc -forever & /usr/bin/google-chrome
#CMD x11vnc -display :99 -localhost & vncviewer :0

#ENTRYPOINT [ "./RetroPie-Setup/retropie_setup.sh" ]