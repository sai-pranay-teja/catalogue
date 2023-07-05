FROM node
RUN mkdir /app
WORKDIR /app
COPY server.js .
COPY node_modules/ node_modules/
COPY docker/run.sh .
ENTRYPOINT [ "bash", "run.sh" ]