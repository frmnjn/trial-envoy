#!/bin/sh
#java -cp app:app/lib/* com.example.hello.HelloApplication
java -jar /app/app.jar &
envoy -c /etc/service-envoy.yaml --service-cluster service${SERVICE_NAME}
#java -cp /app/resources:/app/classes:/app/libs/* com.example.hello.HelloApplication
#docker run -it -v service-envoy.yaml:/etc/service-envoy.yaml --entrypoint /bin/sh frmnjn/hello start.sh