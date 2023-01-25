FROM node:10.23.1
WORKDIR /gitbook
COPY . .
RUN npm install --global gitbook-cli && \
    rm -rf node_modules package-lock.json &&\
    gitbook init &&\
    gitbook install
EXPOSE 4000
