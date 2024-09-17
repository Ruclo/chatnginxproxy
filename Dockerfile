FROM nginx:alpine

# Copy the custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh


# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
