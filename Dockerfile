FROM --platform=linux/x86_64 redhat/ubi8-minimal

RUN microdnf -y install nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]