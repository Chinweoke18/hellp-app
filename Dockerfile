# Specify a base image
#FROM node:14-alpine
FROM public.ecr.aws/r8a9v2p6/node-alpine:latest

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
