FROM docker-registry.default.svc:5000/products/nginx-example:latest

COPY learninglocker.conf /opt/app-root/etc/nginx.d/learninglocker.conf
COPY nginx.conf /etc/opt/rh/rh-nginx112/nginx/nginx.conf 

# expose HTTP
EXPOSE 8082
EXPOSE 8090


# Run
CMD [ "/opt/rh/rh-nginx112/root/usr/sbin/nginx", "-g", "daemon off;"]
