FROM dockerfile/ubuntu

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y x-window-system-core python libopenal1 freeglut3  && \
  rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | bash
RUN bash -c '. /root/.nvm/nvm.sh && nvm install stable && nvm alias default stable'
