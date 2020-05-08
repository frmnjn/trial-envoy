#!/bin/sh
#java -cp app:app/lib/* com.example.hello.HelloApplication
java -jar /app/app.jar
envoy -c /etc/service-envoy.yaml --service-cluster service${SERVICE_NAME}
