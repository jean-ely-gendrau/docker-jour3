FROM jamesnetherton/docker-atom-editor

USER root
RUN apt-get update \
  && apt-get install -y xvfb x11vnc fluxbox

USER atom
ENV DISPLAY :1
CMD Xvfb :1 -screen 0 1280x1024x16 & fluxbox & x11vnc -forever