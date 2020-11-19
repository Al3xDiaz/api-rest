cd api-rest/
sudo git pull
cd api-rest/
sudo docker rm $(sudo docker ps -a -f status=exited -q)
sudo docker rmi $(sudo docker images -a -q)
sudo docker build -t api-content .
sudo docker run -d -p 80:80 api-content