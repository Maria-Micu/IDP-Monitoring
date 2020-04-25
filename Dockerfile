FROM node:stretch-slim

WORKDIR /usr/monitoring

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY *.json ./
COPY *.js ./

RUN mkdir -p /var/log/mycompany
RUN npm install
EXPOSE 5005

CMD ["node", "monitoring.js"]