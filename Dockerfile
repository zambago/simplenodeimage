#base image
FROM node:alpine
WORKDIR /usr/app

#Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#Default Command

CMD ["npm", "start"]
