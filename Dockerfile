FROM nginx:alpine

COPY index.html app.js styles.css /usr/share/nginx/html/
COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker-entrypoint.sh /usr/local/bin/marketplace-entrypoint

RUN rm -f /etc/nginx/conf.d/default.conf \
    && chmod +x /usr/local/bin/marketplace-entrypoint

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["marketplace-entrypoint"]
