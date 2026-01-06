# Build stage
FROM node:24.12.0-alpine AS builder
WORKDIR /app
COPY blog-app/package*.json ./
RUN npm ci
#copy source build files
COPY blog-app/ .
RUN npm run build -- --configuration=production
# Production stage
FROM nginx:alpine
#remove default nginx.conf
#RUN rm /etc/nginx/conf.d/default.conf
#romove files from nginx
RUN rm -rf /usr/share/nginx/html/*
#copy nginx.conf
#COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
#copy build files from builder stage
COPY --from=builder /app/dist/blog-app/browser /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]