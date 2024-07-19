FROM node:22-alpine AS base
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build
CMD ["npm", "run", "start"]
