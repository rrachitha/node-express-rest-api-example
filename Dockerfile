FROM node:16

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

# For production
# npm ci --only=production

COPY . .


EXPOSE 8000
EXPOSE 8081


ENTRYPOINT ["/bin/bash", "-c", "npm start"]



