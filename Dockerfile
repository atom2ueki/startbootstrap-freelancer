FROM ubuntu:14.04

# Enable EPEL for Node.js
RUN sudo apt-get update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs-legacy
# Install Node.js and npm
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -y npm

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src && npm install --production

EXPOSE  5000

CMD ["node", "/src/index.js"]
