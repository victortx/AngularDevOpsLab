# ============================================
# Stage 1: Build Angular
# ============================================
FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build


# ============================================
# Stage 2: Serve with Nginx
# ============================================
FROM nginx:1.27-alpine

COPY --from=build /app/dist/angular-devops-lab/browser /usr/share/nginx/html

EXPOSE 80
