# Use official Nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy your static website files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx will serve the files automatically

