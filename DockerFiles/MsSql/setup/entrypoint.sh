#!/bin/bash
#start SQL Server, start the script to create the DB and import the data
/usr/src/app/import-data.sh & exec /opt/mssql/bin/sqlservr
