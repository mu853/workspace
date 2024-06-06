FROM eclipse-temurin:21-jdk
RUN apt update
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN apt install -y git
RUN code-server --install-extension redhat.java
RUN code-server --install-extension VMware.vscode-boot-dev-pack
