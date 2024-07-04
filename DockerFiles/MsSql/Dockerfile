# Usa l'immagine ufficiale di Microsoft SQL Server
FROM mcr.microsoft.com/mssql/server:2019-latest

# Imposta le variabili d'ambiente
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong!Passw0rd
ENV MSSQL_PID=Express

# Crea una cartella per gli script
RUN mkdir -p /usr/src/app

# Copia lo script SQL dalla cartella setup alla cartella nel contenitore
COPY setup/init.sql /usr/src/app

# Esponi la porta di SQL Server
EXPOSE 1534

# Avvia SQL Server e esegui lo script per inizializzare il database
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & sleep 30 && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -i /usr/src/app/init.sql && tail -f /dev/null"