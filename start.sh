cd ~
mkdir .ssh
touch .ssh/known_hosts
echo "Deploy..."
echo "$key"> .ssh/key.pem
ssh-keyscan -t ecdsa $DEPLOY_HOST >> ~/.ssh/known_hosts
cd .ssh
chmod 400 key.pem
ssh -i "key.pem"  $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
rm key.pem
#rm -r .ssh
echo "Deploy success!!! you are awesome."