FROM maven
WORKDIR /opt/server
COPY src /opt/server/src
COPY pom.xml .
RUN mvn clean package
ENV CART_ENDPOINT="cart:8080" \
    DB_HOST="mysql"
RUN mv /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
CMD ["java", "-jar", "shipping.jar"]
