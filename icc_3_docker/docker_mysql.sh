sudo docker network create mynet
sudo docker run --name=mysql_db --network=mynet -d -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v $PWD/mysql/volume:/var/lib/mysql -p 3306:3306 mysql:5.7
sudo docker run --name=nginx_ws --network=mynet -d -p 80:80 nginx
sudo docker ps -a
echo ""

echo "NGINX: Installing MySQL Client"
sudo docker exec -i nginx_ws bash < mysql/nginx_mysql_client.sh

echo "MySQL: Enabling remote access on MySQL with new user"
sudo docker exec -i mysql_db bash < mysql/mysql_enable_remote.sh

sudo docker inspect mysql_db | grep '"IPAddress"'

echo "Access the MySQL Server through the command bellow with the above IPAddress"
echo ""
echo "mysql -h [IPAddress] -u root --port=3306"
echo ""
echo "Or enter the NGINX Container (with the command below) and run the same command"
echo ""
echo "sudo docker exec -it nginx_ws bash"