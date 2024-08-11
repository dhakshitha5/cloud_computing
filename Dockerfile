FROM ubuntu:latest

WORKDIR /app

copy./app

Run apt-get update && apt-get install -y pythons python3-pip

ENV NAME World

CMD ["python3", "app.py"]
