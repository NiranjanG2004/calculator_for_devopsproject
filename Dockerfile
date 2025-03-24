FROM node:alpine

WORKDIR /app

# Copy only package.json if package-lock.json is not available
COPY package.json /app/

RUN npm install

COPY . /app/

CMD ["npm", "start"]

EXPOSE 3000
