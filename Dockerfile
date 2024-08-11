FROM ubuntu:latest

# Set the working direcory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app /cloud_computing/app.py

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip

# Set environment variables
ENV NAME World

# Run a command to start the application
CMD ["python3", "app.py"]
