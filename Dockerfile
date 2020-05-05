FROM alpine:latest

ENV SERVER_PORT=$PORT

#COPY CONTENTS TO APACHE ENVIRONMENT
COPY target/java-quiz.war /app/bin/

