ssh -i "$apirest" ubuntu@ec2-54-191-24-157.us-west-2.compute.amazonaws.com
docker build -t api-content .  
docker run -d -p 80:80 \
-e auth0_apiidentifier="$Auth0_ApiIdentifier" \
-e auth0_domain="$Auth0_Domain" \
-e auth0managementapi="$Auth0ManagementAPI" \
-e connectionstring="$connectionString" \
-e connstring_tracking="$ConnString_Tracking" \
-e logincaex="$LoginCAEX" \
-e my_api_key="$my_api_key" \
-e my_api_secret="$my_api_secret" \
-e my_cloud_name="$my_cloud_name" \
-e notificacionesmailpass="$NotificacionesMailPass" \
-e sql_sp="$SQL_SP" \
api-content
 