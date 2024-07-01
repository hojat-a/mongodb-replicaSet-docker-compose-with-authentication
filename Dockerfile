FROM mongo
RUN openssl rand -base64 756 > /etc/mongo-keyfile 
RUN chmod 400 /etc/mongo-keyfile 
RUN chown mongodb:mongodb /etc/mongo-keyfile 
COPY mongo-init.js /docker-entrypoint-initdb.d/mongo-init.js
