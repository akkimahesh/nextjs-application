FROM node:20-alpine3.18 AS builder

WORKDIR /app
COPY package*.json ./

# Install all dependencies (remove --production if devDeps needed)
RUN npm install

COPY . .
RUN npm run build

EXPOSE 3000
CMD ["npm","run", "start"]
