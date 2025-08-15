FROM caddy:alpine

# Copy site files, excluding system files
COPY ./site/*.html /srv/
COPY ./site/*.css /srv/
COPY ./site/images/ /srv/images/

# Copy Caddyfile
COPY ./Caddyfile /etc/caddy/Caddyfile

# Set proper permissions
RUN chmod -R 644 /srv/*
