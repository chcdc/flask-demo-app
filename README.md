# Python flask app for docker

### How to use

```sh
docker run -d -p 5000:5000 chcdc/flask-demo-app

$ curl localhost:5000
It's working!
You are 172.17.0.1
I'm localhost:5000
```


You can change the port, passing via env

e.g.:
```sh
docker run -d -e "PORT=2000" -p 2000:2000 chcdc/flask-demo-app
It's working!
You are 172.17.0.1
I'm localhost:2000
```
