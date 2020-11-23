cd ~/api-rest/
cd api-rest/
sudo docker build -t api-content .
sudo docker kill $(sudo docker ps -a | sudo grep "api-content")
sudo docker run -d -p 80:80 api-content
sudo docker rm $(sudo docker ps -a -f status=exited -q)
sudo docker rmi $(sudo docker images -a -q)