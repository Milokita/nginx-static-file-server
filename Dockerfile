FROM nginx:alpine

# Add your custom global config
COPY limit_req.conf /etc/nginx/conf.d/

# Copy the .htpasswd for basic auth
COPY .htpasswd /etc/nginx/

# The default.conf is already handled by your docker-compose volumes
