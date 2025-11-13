# Use the official Nginx image as the base
FROM nginx:latest

# Remove the default nginx.conf
RUN rm /etc/nginx/nginx.conf

# Copy custom nginx.conf into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static website files to Nginx's html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 (since nginx.conf may use 8080)
EXPOSE 8080

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
