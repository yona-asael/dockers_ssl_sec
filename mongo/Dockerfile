FROM mongo:3.6.2-jessie

COPY scripts /home/mongodb/scripts

RUN mkdir -p /etc/ssl/

# COPY ssl/server-cert.pem /etc/ssl/server-cert.pem

# COPY ssl/ca.pem /etc/ssl/ca.pem

COPY ssl/mongodb.pem /etc/ssl/mongodb.pem

COPY mongod.conf /etc/mongod.conf

RUN chmod +rwx /home/mongodb/scripts/run.sh

CMD ["/home/mongodb/scripts/run.sh"]
