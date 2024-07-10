#Use the SQL Server image as a base
FROM mcr.microsoft.com/mssql/server:2019-latest AS sqlserver

USER root
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY setup/. /usr/src/app/
COPY sql/. /usr/src/app/

RUN chmod +x /usr/src/app/import-data.sh
RUN chmod +x /usr/src/app/entrypoint.sh

#entrypoint script

ENTRYPOINT /bin/bash /usr/src/app/entrypoint.sh

# # WORKDIR /app
# COPY init-db.sql /docker-entrypoint-initdb.d/

# #Set environment variables for SQL Server
# ENV SA_PASSWORD=YourStrong!Passw0rd
# ENV ACCEPT_EULA=Y
# ENV MSSQL_PID=Express

# # #Start SQL Server and initialize the database, then start the .NET Core application
# CMD /opt/mssql/bin/sqlservr & sleep 20 & /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -d master -i /docker-entrypoint-initdb.d/init-db.sql && tail -f /dev/null