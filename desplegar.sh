cd ~/api-rest/
cd api-rest/
sudo docker build -t api-content .
containerID=$(sudo docker container ls | grep "api-content" | awk '{print $1}')
sudo docker stop $containerID
sudo docker rm $containerID
sudo docker run -d -p 80:80 api-content