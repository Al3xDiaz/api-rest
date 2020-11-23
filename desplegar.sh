cd ~/api-rest/
cd api-rest/
sudo docker build -t api-content .
containerID=$(sudo docker container ls | grep "0.0.0.0:5000" | awk '{print $1}')
echo $containerID
sudo docker stop $containerID
sudo docker rm $containerID
sudo docker run -d -p 5000:80 api-content
sudo docker system prune -a --force