# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy the website files from your project folder to Nginx web server directory
COPY . /usr/share/nginx/html/

# Expose port 80 so the container can serve the website
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
