FROM node:18-alpine
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN npm i
RUN npm i pm2 -g
CMD ["pm2-runtime", "app.js"]