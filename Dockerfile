FROM mongo:3.6.20-xenial

RUN mkdir -p /home/mongodb
RUN touch /home/mongodb/.dbshell