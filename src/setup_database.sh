#!/usr/bin/env bash
# Wait for the database to startup 
echo "Start Sleep"
sleep 30
echo "Finished Sleep"
# Once the wait is over then execute the setup.sql script. Its an assumption that after the sleep the sql server will be ready
echo "Start sqlcmd setup.sql"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P SuperStr0ngPa55word -d master -i setup.sql
echo "Finished sqlcmd setup.sql"
