# Use the official Node.js image with the "current" tag as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the entire React app to the working directory
COPY ./index.html /usr/share/nginx/html/

# Copy all the images from the "images" folder to the appropriate location in the container
COPY assets/* /usr/share/nginx/html/assets/

# Expose port 80 to make the web server accessible from outside the container
EXPOSE 80

# Start Nginx in the foreground when the container runs
CMD ["nginx", "-g", "daemon off;"]