cd ~/api-rest/
cd api-rest/
sudo docker build -t api-content .
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker run -d -p 80:80 api-content