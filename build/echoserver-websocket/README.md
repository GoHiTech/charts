# build/echoserver-websocket/README.md

Reference.
* https://websockets.readthedocs.io/en/stable/howto/kubernetes.html

```bash
$ docker build -t echoserver-websockets:1.0 .

$ docker run --name run-websockets-test --publish 32080:8080 --rm \
    echoserver-websockets:1.0
```

```bash
python3 -m websockets ws://localhost:32080/

docker kill -s TERM run-websockets-test
```
