# 🕒 SimpleTimeService

**SimpleTimeService** is a minimalist web service that returns the visitor's IP address and the current UTC timestamp in JSON format when accessing the `/` endpoint.

---

## 📦 Example Response

```json
{
  "timestamp": "2025-04-17T15:52:23Z",
  "ip": "203.0.113.42"
}
```
## Built With
Language: Python 3.11

Web Framework: Flask

WSGI Server: Gunicorn

Container Base: python:3.11-slim

Security: Runs as a non-root user in the container


## Prerequisites
Make sure you have the following tools installed:

- Docker 
- Python 3.11 (Optional for local dev)


## Usage
✅ Clone the Repository

```
git clone https://github.com/rahulmadaan/simple-time-service.git

cd simple-time-service
```

## Build the Docker Image
```
docker build -t simpletimeservice .
```

## Run the Container
```
docker run -d -p 5000:5000 simpletimeservice
```

## Access the App
Open your browser and type
```
http://localhost:5000
```
or use curl:
```
curl http://localhost:5000
```


## DockerHub Image
You can also pull and run the prebuilt image directly:

```
docker pull rahulmadaan/simpletimeservice
```
```
docker run -it -p 5000:5000 rahulmadaan/simpletimeservice
```

## Security
- The container runs as a non-root user (simpletimeservice)
- Built on a slim Python base image for minimal footprint
- Only required ports and libraries are included