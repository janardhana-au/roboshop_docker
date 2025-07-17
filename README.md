# Implementing roboshop project uing Docker



Test connectivity

=================

You can exec into the catalogue container and test:



bash

Copy

Edit

docker exec -it catalogue bash

Inside:



bash

Copy

Edit

ping mongodb

or test the port:



bash

Copy

Edit

apt update \&\& apt install -y netcat

nc -zv mongodb 27017

You should see:



css

Copy

Edit

Connection to mongodb 27017 port \[tcp/\*] succeeded!


================================================================================
Set the hostname explicitly using:


docker run -h mycataloguecontainer ...
and it will show:


root@mycataloguecontainer:/opt/server#


