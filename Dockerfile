# download node image 'baseImage'
FROM node:18

# create app directory
WORKDIR /nest-app

# copy package.json and package-lock.json
# now container has app dependencies and nodejs
COPY package.json /nest-app
#COPY package-lock.json /nest-app

# install dependencies
RUN npm install

# copy app code and other files
COPY . /nest-app


# define app port 'documentation purposes'
EXPOSE 3000

# execute the app
CMD ["npm", "run", "start:dev"]
#CMD ["npm", "run", "start"]

# Dockerfile -> Docker Image 'Blueprint for containers' -> Docker Container

# docker built -t nest_app1 . 'build image from Dockerfile'
# docker image ls 'list all images'
# docker run --name nest_cont1 -p 3000:3000  nest_app1  : 'run container from image after forwarding port 3000 to 3000'
# docker ps  'list all running containers'
# docker rm nest_cont1 -f 'force remove container'


# docker exec -it nest_cont1 bash 'run bash in container'
# docker logs nest_cont1 'view container logs'

# docker run --name nest_cont1 -v /E:/NewChapter/nest/leantasks/docker/docker:/nest-app -p 3000:3000 nest_app1 : 'run container locally' hot reload
# docker run --name nest_cont1 -v //e/NewChapter/nest/leantasks/docker/docker:/nest-app -p 3000:3000 nest_app1 'windows'
# docker run --name nest_cont1 -v /E:/NewChapter/nest/leantasks/docker/docker:/nest-app:ro -p 3000:3000 nest_app1


# docker network ls