# base image
FROM node:16-alpine

# working Directory
WORKDIR /app

# copy the content form current folder to the working Dir 
COPY . .

# run these commands when building the image 
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

