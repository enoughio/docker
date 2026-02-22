# base image
FROM node:16-alpine

# working Directory
WORKDIR /app

# copy the content form current folder to the working Dir 
COPY . .

# run these commands when building the image 
RUN npm install
RUN npm run build 
RUN npx prisma generate 

EXPOSE 3000

CMD ["node", "dist/index.js"]

