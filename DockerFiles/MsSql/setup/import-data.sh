#!/bin/bash

# Wait 60 seconds for SQL Server to start up by ensuring that 
# calling SQLCMD does not return an error code, which will ensure that sqlcmd is accessible
# and that system and user databases return "0" which means all databases are in an "online" state
# https://docs.microsoft.com/en-us/sql/relational-databases/system-catalog-views/sys-databases-transact-sql?view=sql-server-2017 

DBSTATUS=1
ERRCODE=1
i=0

echo "before loop"
while [[ $DBSTATUS -ne 0 ]] && [[ $i -lt 60 ]] && [[ $ERRCODE -ne 0 ]]; do
	sleep 1
	i=$((i+1))
	DBSTATUS=$(/opt/mssql-tools/bin/sqlcmd -h -1 -t 1 -U sa -P $SA_PASSWORD -Q "SET NOCOUNT ON; Select isnull(SUM(state),1) from sys.databases")
	
	if [ -z "$DBSTATUS" ]; then 
		DBSTATUS=1
	else
		ERRCODE=$?
	fi
	
	echo "in loop i:$i err:$ERRCODE status:-$DBSTATUS-"
done
echo "after loop i:$i err:$ERRCODE status:-$DBSTATUS-"

if [ $i -eq 60 ]; then 
	echo "SQL Server took $i  seconds to start up"
	exit 1
fi

echo "after if"

# Run the setup script to create the DB and the schema in the DB
for f in /usr/src/app/*.sql; do
	/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -i "$f"
	echo "imported $f"
done
