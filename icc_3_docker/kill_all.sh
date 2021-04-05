sudo docker stop nginx_ws mysql_db
sudo docker rm nginx_ws mysql_db
sudo docker network rm mynet

sudo rm -rf mysql/volume
mkdir mysql/volume

echo "Docker nginx_ws and mysql_db down"