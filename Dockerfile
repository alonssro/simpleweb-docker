#Specify a base image
FROM node:alpine

#Define working directoy
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD [ "npm", "run", "start" ]
EXPOSE 8080/tcp