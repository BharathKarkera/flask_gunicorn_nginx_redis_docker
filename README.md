# flask_gunicorn_nginx_redis_docker

 6:03PM @Bharath ~ sudo docker compose up -d --scale web_server=3
[sudo] password for hackthebox: 
[+] Building 7.7s (10/10) FINISHED                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                   0.1s
 => => transferring dockerfile: 172B                                                                                                                                   0.0s
 => [internal] load .dockerignore                                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:latest                                                                                                       0.7s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                          0.0s
 => [1/4] FROM docker.io/library/python:latest@sha256:f64fb374cbdd29c0a1d07a5cd1a89d198dd58a67803df7345fb2d807ffb087f8                                                 0.0s
 => => resolve docker.io/library/python:latest@sha256:f64fb374cbdd29c0a1d07a5cd1a89d198dd58a67803df7345fb2d807ffb087f8                                                 0.0s
 => [internal] load build context                                                                                                                                      0.0s
 => => transferring context: 1.38kB                                                                                                                                    0.0s
 => CACHED [2/4] WORKDIR /my_code                                                                                                                                      0.0s
 => [3/4] COPY . /my_code                                                                                                                                              0.0s
 => [4/4] RUN pip install -r requirements.txt                                                                                                                          6.5s
 => exporting to image                                                                                                                                                 0.3s 
 => => exporting layers                                                                                                                                                0.3s 
 => => writing image sha256:b4826234bb6bc32edef64545d5acdee17ce8836bd9897fab8344343a071eece9                                                                           0.0s 
 => => naming to docker.io/library/flask_redis_nginx_gunicorn_web_server                                                                                               0.0s 
                                                                                                                                                                            
Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them                                                                        
[+] Running 6/6
 ⠿ Network flask_redis_nginx_gunicorn_default         Created                                                                                                          0.1s
 ⠿ Container redis_server                             Started                                                                                                          0.9s
 ⠿ Container flask_redis_nginx_gunicorn-web_server-3  Started                                                                                                          1.4s
 ⠿ Container flask_redis_nginx_gunicorn-web_server-1  Started                                                                                                          1.7s
 ⠿ Container flask_redis_nginx_gunicorn-web_server-2  Started                                                                                                          1.5s
 ⠿ Container nginx_lb                                 Started                                                                                                          2.3s
 6:03PM @Bharath ~ 
 6:03PM @Bharath ~ 
 6:03PM @Bharath ~ sudo docker ps -a                             
CONTAINER ID   IMAGE                                   COMMAND                  CREATED          STATUS         PORTS                                         NAMES
54f19659c510   nginx:latest                            "/docker-entrypoint.…"   10 seconds ago   Up 7 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp             nginx_lb
3641f37b533c   flask_redis_nginx_gunicorn_web_server   "/bin/sh -c 'gunicor…"   10 seconds ago   Up 8 seconds   0.0.0.0:49212->5000/tcp, :::49212->5000/tcp   flask_redis_nginx_gunicorn-web_server-1
0a3a937fc0d1   flask_redis_nginx_gunicorn_web_server   "/bin/sh -c 'gunicor…"   10 seconds ago   Up 8 seconds   0.0.0.0:49211->5000/tcp, :::49211->5000/tcp   flask_redis_nginx_gunicorn-web_server-2
9ffde4b848f8   flask_redis_nginx_gunicorn_web_server   "/bin/sh -c 'gunicor…"   10 seconds ago   Up 8 seconds   0.0.0.0:49210->5000/tcp, :::49210->5000/tcp   flask_redis_nginx_gunicorn-web_server-3
f798d0b1dc4d   redis:latest                            "docker-entrypoint.s…"   11 seconds ago   Up 9 seconds   0.0.0.0:6379->6379/tcp, :::6379->6379/tcp     redis_server
 6:04PM @Bharath ~ 
 6:06PM @Bharath ~ 
 6:06PM @Bharath ~ curl -i  http://localhost:80
HTTP/1.1 200 OK
Server: nginx/1.23.1
Date: Sat, 06 Aug 2022 01:06:07 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 118
Connection: keep-alive

This is a simple load balanced application, served by instance: 0a3a937fc0d1 and this is your 8th visit to the website%                                                      6:06PM @Bharath ~ 
