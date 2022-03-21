# Prod dockerfile for abs-guide website application

# pull nginx image from dockerhub
FROM nginx

# copy all files from app folder to nginx root
COPY abs-guide/* /usr/share/nginx/html/

# expose port 80 on the container
EXPOSE 80

#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon-off"]
