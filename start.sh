echo -e "$API_REST_SSH_KEY" > API_REST_SSH_KEY.pem
ssh -i "API_REST_SSH_KEY.pem" ubuntu@ec2-54-236-33-206.compute-1.amazonaws.com 'sh desplegar.sh'
rm API_REST_SSH_KEY.pem