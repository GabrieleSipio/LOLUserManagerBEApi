#Use the SQL Server image as a base
FROM mcr.microsoft.com/mssql/server:2019-latest AS sqlserver
WORKDIR /app
COPY ./init-db.sql /docker-entrypoint-initdb.d/

#Set environment variables for SQL Server
ENV SA_PASSWORD=YourStrong!Passw0rd
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express

#Start SQL Server and initialize the database, then start the .NET Core application
CMD /opt/mssql/bin/sqlservr & sleep 20 & /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P YourStrong!Passw0rd -d master -i /docker-entrypoint-initdb.d/init-db.sql && tail -f /dev/null