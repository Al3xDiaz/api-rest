cd ~
mkdir .ssh
touch .ssh/known_hosts
echo "Deploy..."
echo -e $key> .ssh/key.pub
ssh-keyscan -t ecdsa $DEPLOY_HOST >> ~/.ssh/known_hosts
cd .ssh
ssh -i "key.pub" -o StrictHostKeyChecking=yes $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
rm key.pub
#rm -r .ssh
echo "Deploy success!!! you are awesome."