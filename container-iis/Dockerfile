FROM windows/servercore/iis

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\my-server-dev\www\*

WORKDIR /my-server-dev/www

COPY /www/ .