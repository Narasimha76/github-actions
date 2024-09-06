# Stage 1: Build Stage
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . .
RUN npm run build

# Stage 2: Production Stage with Nginx
FROM nginx:alpine
WORKDIR /app
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"]
