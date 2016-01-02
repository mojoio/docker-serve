FROM hosttoday/docker-static
RUN apt-get update && apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | NVM_DIR="/nvm" bash
RUN bash -c "export USER=root && export HOME=/tmp && source /nvm/nvm.sh && nvm install 4.2.3 && nvm alias default v4.2.3"
EXPOSE 80
