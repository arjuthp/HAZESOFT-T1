FROM alpine:latest

# Install nginx and git
RUN apk update && apk add --no-cache nginx git

# Clone the repository
RUN git clone https://github.com/veekrum/task /app

# Copy the website files to the nginx document root
RUN mkdir -p /var/www/html && cp -r /app/site /var/www/html/

# Copy custom nginx configuration
COPY my-site.conf /etc/nginx/http.d/default.conf

# Expose port 80 for nginx
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
