# Build stage
FROM node:24.12.0-alpine AS builder
WORKDIR /blog-app
COPY blog-app/package*.json ./
RUN npm ci