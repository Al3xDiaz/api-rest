mkdir ~/.ssh
touch ~/.ssh/known_hosts
echo "Deploy..."
echo -e $key> key
ssh -i "key" -o StrictHostKeyChecking=yes $DEPLOY_USER@$DEPLOY_HOST "sh ~/api-rest/desplegar.sh"
rm key
echo "Deploy success!!! you are awesome."