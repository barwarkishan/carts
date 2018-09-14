FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

COPY . /opt/carts

RUN mvn package  && \
	mv target/carts.jar /run/carts.jar && \
	rm -rf *


EXPOSE 80

CMD "java -jar /run/carts.jar --port=80"
