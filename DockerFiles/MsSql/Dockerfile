# Usa l'immagine ufficiale di Microsoft SQL Server
FROM mcr.microsoft.com/mssql/server:2019-latest

# Imposta le variabili d'ambiente
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong!Passw0rd
ENV MSSQL_PID=Express

# Crea una cartella per gli script
RUN mkdir -p /usr/src/app

COPY setup/*.* /usr/src/app/
COPY sql/*.* /usr/src/app/

EXPOSE 1534
# Grant permissions for the import-data script to be executable
RUN chmod 777 /usr/src/app/import-data.sh
RUN chmod 777 /usr/src/app/entrypoint.sh

#entrypoint script

ENTRYPOINT /bin/bash /usr/src/app/entrypoint.sh