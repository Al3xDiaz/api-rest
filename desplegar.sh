cd api-rest/
sudo git pull
cd api-rest/
sudo docker rmi $(sudo docker images -a -q)
sudo docker build -t api-content .
sudo docker kill $(sudo docker ps -a | sudo grep "api-content")
sudo docker run -d -p 80:80 api-content