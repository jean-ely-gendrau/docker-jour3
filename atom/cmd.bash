 docker run -p 5900:5900 -t gcastel/docker-atom-editor-vnc


docker build --rm -t retropie:dev .
docker run --name retropie -d -p 5900:5900 -t retropie:dev

docker build --rm -t ubuntuligth:vnc .
docker run --name ubuntuligth -d -p 5900:5900 -t ubuntuligth:vnc