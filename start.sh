cd ~
mkdir .ssh
touch .ssh/known_hosts
echo "Deploy..."
echo -e $key> .ssh/key
ssh-keyscan -t ecdsa $DEPLOY_HOST >> ~/.ssh/known_hosts
cd .ssh
ssh -i "key" -o StrictHostKeyChecking=yes $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
rm key
#rm -r .ssh
echo "Deploy success!!! you are awesome."