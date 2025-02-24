# Use Nginx as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy HTML file
COPY mobile.html index.html

# Copy the entire assets folder (CSS, JS, and images)
COPY assets/ assets/

# Expose port 80 so the container can serve your website
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
