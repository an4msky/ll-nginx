FROM docker-registry.default.svc:5000/openshift/nginx-example:latest

COPY learninglocker.conf /opt/app-root/etc/nginx.d/learninglocker.conf
COPY nginx.conf /etc/opt/rh/rh-nginx112/nginx/nginx.conf 

# expose HTTP
EXPOSE 8082

# Run
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]
