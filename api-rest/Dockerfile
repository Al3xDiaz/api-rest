FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
#enviroment variables 
#example  ${NAME}
ARG auth0_apiidentifier
ARG auth0_domain
ARG auth0managementapi
ARG connectionstring
ARG connstring_tracking
ARG logincaex
ARG my_api_key
ARG my_api_secret
ARG my_cloud_name
ARG notificacionesmailpass
ARG sql_sp

ENV Auth0_ApiIdentifier =${Auth0_ApiIdentifier}
ENV Auth0_Domain =${Auth0_Domain}
ENV Auth0ManagementAPI =${Auth0ManagementAPI}
ENV connectionString =${connectionString}
ENV ConnString_Tracking =${ConnString_Tracking}
ENV LoginCAEX =${LoginCAEX}
ENV my_api_key =${my_api_key}
ENV my_api_secret =${my_api_secret}
ENV my_cloud_name =${my_cloud_name}
ENV NotificacionesMailPass =${NotificacionesMailPass}
ENV SQL_SP =${SQL_SP}

WORKDIR /app
EXPOSE 80
# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "api-rest.dll"]