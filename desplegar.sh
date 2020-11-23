sudo su
cd api-rest/api-rest/
docker build -t api-content .
containerID=$(docker container ls | grep "0.0.0.0:5000" | awk '{print $1}')
echo $containerID
docker stop $containerID
docker rm $containerID
docker run -d -p 5000:80 api-content
docker system prune -a --force