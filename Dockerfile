# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file to the container
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static content (e.g., HTML, CSS, JS) to the default Nginx public directory
COPY nginx-html /usr/share/nginx/html

# Expose port 80 for incoming traffic
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


# docker build -t nginx-jason .

# docker run -p 8080:80 nginx -v/Users/jsbailey/teaching-2324/70085/ex9/nginx-html:/usr/share/nginx/html

