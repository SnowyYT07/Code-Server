cd ~
mkdir code-server
cd code-server
touch docker-compose.yaml
mkdir config

id

echo "---
version: "2.1"
services:
  code-server:
    image: lscr.io/linuxserver/code-server
    container_name: code-server
    environment:
      - PUID=change_me_for_the_UID
      - PGID=change_me_for_the_GID
      - TZ=Asia/Kolkata
      - PASSWORD=password 
      - SUDO_PASSWORD=password
    volumes:
      - ./code-server/config:/config 
    ports:
      - 8443:8443 
    restart: unless-stopped" >> docker-compose-yaml

echo "now modify the docker-compose.yaml file with the changes needed"
echo "Run with docker-compose -f docker-compose.yaml up"