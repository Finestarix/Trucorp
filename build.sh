#!/bin/sh

# Stop trucorp-web-2.0 container
sudo docker stop trucorp-web-2.0

# Remove trucorp-web-2.0 container
sudo docker container rm trucorp-web-2.0

# Re-build trucorp-web-2.0 image
sudo docker build --tag trucorp-web-2.0:latest .

# Create trucorp-web-2.0 container
sudo docker run --detach --publish 7000:80 --name trucorp-web-2.0 trucorp-web-2.0

# Add trucorp-web-2.0 container to trucorp network
sudo docker network connect trucorp trucorp-web-2.0