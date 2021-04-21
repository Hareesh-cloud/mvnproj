FROM gcr.io/google_appengine/jetty9
VOLUME /tmp
ADD ./myapp.jar /app.jar
CMD java -jar /app.jar
