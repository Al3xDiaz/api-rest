sudo docker rm $(sudo docker ps -a -f status=exited -q)
sudo docker rmi $(sudo docker images -a -q)