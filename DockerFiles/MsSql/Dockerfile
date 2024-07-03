FROM mcr.microsoft.com/mssql/server

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Pa55w0rd

USER root
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY setup/*.* /usr/src/app/
COPY sql/*.* /usr/src/app/
# Grant permissions for the import-data script to be executable
RUN chmod 777 /usr/src/app/import-data.sh
RUN chmod 777 /usr/src/app/entrypoint.sh

#entrypoint script

ENTRYPOINT /bin/bash /usr/src/app/entrypoint.sh