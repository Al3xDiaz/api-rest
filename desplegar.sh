cd api-rest/
sudo git pull
cd api-rest/
sh ~/clean.sh
sudo docker build -t api-content .
sudo docker run -d -p 80:80 api-content