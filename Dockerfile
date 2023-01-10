ARG REPO=948731545609.dkr.ecr.us-west-2.amazonaws.com
FROM ${REPO}/nginx:latest
#FROM nginx:latest

ADD .  /usr/share/nginx/html
RUN chmod +r /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g","daemon off;"]