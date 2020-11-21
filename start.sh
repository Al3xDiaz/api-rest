cd ~
mkdir .ssh
touch .ssh/known_hosts
echo "Deploy..."
echo -e $key> key.pem
ssh-keyscan -t ecdsa $DEPLOY_HOST >> ~/.ssh/known_hosts
ssh -i "key.pem" -o StrictHostKeyChecking=yes $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
#rm -r .ssh
echo "Deploy success!!! you are awesome."