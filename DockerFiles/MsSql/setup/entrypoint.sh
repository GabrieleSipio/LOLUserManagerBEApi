#!/bin/bash
#start SQL Server, start the script to create the DB and import the data
import-data.sh & exec /opt/mssql/bin/sqlservr
