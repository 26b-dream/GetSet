# Installs into the wrong path
#   winget install MariaDB.Server --location "C:\Programs\MariaDB" -i
# Installs nothing 
#   winget install MariaDB.Server --override "INSTALLDIR=C:\Programs\INSTALLDIR REMOVE=HeidiSQL" -i

# ! Uses a temporary password, be sure to change after installation
winget install MariaDB.Server --override "INSTALLDIR=C:\Programs\MariaDB ADDLOCAL=DBInstance,Client,MYSQLSERVER,SharedLibraries,DEVEL PASSWORD=1qaz1qaz UTF8=1 /quiet"
