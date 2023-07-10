FROM          node
RUN           mkdir /app
WORKDIR       /app
COPY          node_modules/ node_modules/
COPY          server.js .
RUN           curl -s -L https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem -o /app/rds-combined-ca-bundle.pem
COPY          docker/run.sh .
ENTRYPOINT    [ "bash", "run.sh" ]