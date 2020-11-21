cd ~
mkdir .ssh
touch .ssh/known_hosts
echo "Deploy..."
echo -e $key> .ssh/key.pem
ssh-keyscan -t ecdsa $DEPLOY_HOST >> ~/.ssh/known_hosts
cd .ssh
chmod 400 key.pem
cat key.pem
ssh -i "key.pem" -o StrictHostKeyChecking=yes $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
#rm key
#rm -r .ssh
echo "Deploy success!!! you are awesome."