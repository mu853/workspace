FROM eclipse-temurin:21-jdk
RUN apt update
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN apt install -y git
RUN code-server --install-extension redhat.java
RUN code-server --install-extension VMware.vscode-boot-dev-pack
RUN apt install -y postgresql-client
RUN apt install -y iputils-ping net-tools
RUN apt install -y vim
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm install n -g
RUN n stable
RUN apt purge -y nodejs npm
RUN apt autoremove -y
RUN npm install -g @vue/cli
