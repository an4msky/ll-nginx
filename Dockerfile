FROM docker-registry.default.svc:5000/openshift/nginx-example:latest

RUN mkdir /etc/nginx/sites-available
RUN mkdir /etc/nginx/sites-enabled
COPY learninglocker.conf /etc/nginx/sites-available/learninglocker.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN ln -s /etc/nginx/sites-available/learninglocker.conf /etc/nginx/sites-enabled/learninglocker.conf
