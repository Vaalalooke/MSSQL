docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=MSSQL2024" -e "MSSQL_PID=Evaluation" -p 1433:1433  --name sqlpreview --hostname sqlpreview -d mcr.microsoft.com/mssql/server:2022-preview-ubuntu-22.04
