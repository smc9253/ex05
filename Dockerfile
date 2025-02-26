# Use official Nginx as the base image
FROM nginx:latest AS builder

# Set working directory to default location for Nginx HTML files
WORKDIR /usr/share/nginx/html

# Copy the content of the src folder into the container's html directory
COPY ./src /usr/share/nginx/html

# Expose port 80 to access the web server
EXPOSE 80

# Default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
