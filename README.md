# naobana/pgadmin4

### Prerequisities:

In order to run this container you'll need docker installed on a Raspberry PI 3 or 4

* [Docker on Raspbian](https://www.docker.com/blog/happy-pi-day-docker-raspberry-pi/)

### Instructions:

```shell
1. (sudo) docker run -d -p 5050:5050 --name pgadmin4 naobana/pgadmin4:latest
2. browse to http://ip:5050 to enter pgadmin
3. Have fun!
```

### Githubs:

* [GitHub](https://github.com/Naobana/pgadmin4)

### Not so important notes:

This image is for dev and test purposes only.

### Thanks to:

* [biarms](https://github.com/biarms/pgadmin4)
