sudo echo -e "$KEY" > API_REST_SSH_KEY.pem
sudo ssh -i "API_REST_SSH_KEY.pem" ubuntu@ec2-54-236-33-206.compute-1.amazonaws.com 'sh desplegar.sh'
sudo rm API_REST_SSH_KEY.pem