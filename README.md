# Implementing roboshop project uing Docker

Test connectivity
=================

You can exec into the catalogue container and test:
docker exec -it catalogue bash

Inside:

ping mongodb

or test the port:

apt update \&\& apt install -y netcat

nc -zv mongodb 27017

You should see:

Connection to mongodb 27017 port \[tcp/\*] succeeded!

================================================================================
Set the hostname explicitly using:

docker run -h mycataloguecontainer ...
and it will show:

root@mycataloguecontainer:/opt/server#
==============================================================================
## default bridg networking vs DNS resolution
==============================================================================
 default bridge network, DNS resolution for container names is not supporte
 Solution: Use a user-defined bridge network
 User-defined bridge networks support container name-based DNS resolution, unlike the default bridge.
