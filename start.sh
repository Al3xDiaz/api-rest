echo -e "$KEY" > API_REST_SSH_KEY.pem
ssh ubuntu@ec2-54-236-33-206.compute-1.amazonaws.com 'sh api-rest/desplegar.sh' YES
rm API_REST_SSH_KEY.pem