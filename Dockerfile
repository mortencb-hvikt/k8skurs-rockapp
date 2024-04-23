# Use the Nginx image from Docker Hub as the base image
FROM nginx:latest

# Copy the contents of the "startbootstrap-one-page-wonder-gh-pages" folder
# into the Nginx HTML directory
COPY startbootstrap-one-page-wonder-gh-pages/ /usr/share/nginx/html

# Expose port 80 for the app
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]