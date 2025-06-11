FROM nginx:1.28

ARG MOAT_VERSION=v1.1.0

# Update package index and upgrade installed packages to fix vulnerabilities
RUN apt-get update && apt-get upgrade -y && apt-get clean
RUN apt-get install -y curl zip

# Clean up any nginx default content
RUN rm -rf /usr/share/nginx/html/*

RUN curl -L -o moat-web.zip https://github.com/m4ym4y/museum-of-all-things/releases/download/${MOAT_VERSION}/MuseumOfAllThings_Web.zip
RUN unzip moat-web.zip -d /usr/share/nginx/html
RUN rm moat-web.zip