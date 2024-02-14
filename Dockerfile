# download node image 'baseImage'
FROM node:18


WORKDIR /app

#COPY package.json package-lock.json /app/
COPY package-lock.json ./
COPY package.json /app

#RUN npm install
RUN npm ci

COPY . .

RUN npm run build

#CMD ["npm", "start"]
#CMD ["npm", "run", "start"]
ADD run.sh ./app/run.sh
RUN chmod +x ./app/run.sh
CMD [ "/bin/sh", "./run.sh" ]



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