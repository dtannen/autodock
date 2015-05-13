autodock
========

Perform actions based on a webhook from [the Docker Hub](https://hub.docker.com/).

You can then verify this with your favorite way to hit up a URL:

#### Python, with Requests

```python
>>> import json
>>> requests.post("http://localhost:8080/autodock/v1/",
...               data=json.dumps({"repository":{"repo_name":"example/app"}}),
...               headers={'Content-type': 'application/json'})
<Response [200]>
```

#### cURL
```
curl -X POST -H "Content-Type: application/json" \
     -d '{"repository":{"repo_name":"something/else"}}' \
     127.0.0.1:8080/autodock/v1/
```

### Example Run

```
$ ./build.sh
$ export AUTODOCK_YAY=XXXX/XXXX_dev:"/bin/sh eb_update.sh"
$ webhook_listener 
```

