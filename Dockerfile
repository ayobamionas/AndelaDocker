FROM node:9.3.0
MAINTAINER Ayobami Onakomaiya <ayobamionas@gmail.com>

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are copied where
# available
COPY package.json ./
RUN npm install

# if you are building your code for production
# RUN npm install --only=production

#Bundle app source
COPY . .

EXPOSE 3000
CMD ["npm", "start"]