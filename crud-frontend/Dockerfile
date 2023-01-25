FROM node:19.4.0-alpine

ENV PORT 4000

# Create app directory
RUN mkdir -p /frontend
WORKDIR /frontend

# Installing dependencies
COPY package*.json /frontend
RUN npm install

# Copying source files
COPY . /frontend

EXPOSE 4000

# Running the app
CMD "npm" "run" "dev"
