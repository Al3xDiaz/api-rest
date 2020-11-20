mkdir ~/.ssh 
echo "$KEY" > ~/.ssh/id_rsa.pub
ssh ubuntu@ec2-54-236-33-206.compute-1.amazonaws.com 'sh api-rest/desplegar.sh'
rm .ssh/id_rsa.pub