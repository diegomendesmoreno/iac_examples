echo "Initializing..."
kubectl apply -f .
sleep 10
kubectl get pods
kubectl get services
echo ""

echo "NGINX: Installing MySQL Client"
kubectl exec -it nginx-pod -- bash < mysql/nginx_mysql_client.sh

echo "MySQL: Enabling remote access on MySQL with new user"
kubectl exec -it mysql-pod -- bash < mysql/mysql_enable_remote.sh

echo ""
echo ""
echo "Access the MySQL Server through the NGINX Container with the commands below"
echo ""
echo "mysql -h [CLUSTER-IP] -u root -proot --port=3306"
echo ""
kubectl get services mysql-s
echo ""
echo "You are inside the NGINX container now"
kubectl exec -it nginx-pod -- bash