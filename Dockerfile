# The latest LTS image of node
FROM node:16

#Create the directory for the application
WORKDIR /usr/src/frontend

# Copying content
COPY . ./

# Installing NPM, running the build, installing serve for node apps deployement
RUN npm install && npm run build && npm install -g serve 

#deploying the app
ENTRYPOINT serve -s build