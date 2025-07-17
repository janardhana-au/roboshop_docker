FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=RoboShop@1
COPY app-user.sql master-data.sql /docker-entrypoint-initdb.d/
