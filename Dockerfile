# ============================================
# Stage 2: Serve with Nginx
# ============================================
FROM nginx:1.27-alpine

COPY dist/angular-devops-lab/browser /usr/share/nginx/html

EXPOSE 80
