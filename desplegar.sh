cd ~/api-rest/
cd api-rest/
sudo docker build -t api-content .
containerID=$(sudo docker container ls | sudo grep "80" | sudo awk '{print $1}')
echo $containerID
sudo docker stop $containerID
sudo docker rm $containerID
sudo docker run -d -p 80:80 api-content