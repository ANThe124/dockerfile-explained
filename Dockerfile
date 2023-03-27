FROM node:lts-alpine

# Create app directory inside docker image
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/src/app/

RUN npm install

# Copy the rest of the app source code
COPY . /usr/src/app/

EXPOSE 3000

CMD [ "node", "app.js" ]
