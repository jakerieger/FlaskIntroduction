# FlaskIntroduction

This repo has been updated to work with `Python v3.8` and up.

## Docker Container(test locally)
```
docker run -p 5000:5000 --detach cloudacode/freecodetodo:latest
```

## Pod Deployment(kubernetes)
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: cloud-flask
  labels:
    app: cloud-flask
spec:
  replicas: 1
  selector:
    matchLabels:
      app: cloud-flask
  template:
    metadata:
      labels:
        app: cloud-flask
    spec:
      containers:
      - image: cloudacode/freecodetodo:latest
        imagePullPolicy: Always
        name: cloud-flask
        ports:
        - containerPort: 5000
          protocol: TCP
```

## How To Run locally
1. Install `virtualenv`:
```
$ pip install virtualenv
```

2. Open a terminal in the project root directory and run:
```
$ virtualenv env
```

3. Then run the command:
```
$ .\env\Scripts\activate
```

4. Then install the dependencies:
```
$ (env) pip install -r requirements.txt
```

5. Finally start the web server:
```
$ (env) python app.py
```

This server will start on port 5000 by default. You can change this in `app.py` by changing the following line to this:

```python
if __name__ == "__main__":
    app.run(debug=True, port=<desired port>)
```