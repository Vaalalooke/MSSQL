docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=MSSQL2024" -e "MSSQL_PID=Evaluation" -p 1433:1433  --name sqltest --hostname sqltest -d mcr.microsoft.com/mssql/server
