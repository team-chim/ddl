# ddl
Contain DDL (Data Description Language) files



# Docker
The `Dockerfile` contains build instructions for the database structure. The structure will be created in the docker container.
Docker image is based from the __Docker__ official mysql docker image and *NOT* __MySQL__'s MySQL docker image. 

## Build Command
```
$ docker build -t db/mysql .
```
This command builds the docker image from the provided `Dockerfile` and names it `db/mysql`.

## Interactive Run for Development
```
$ docker run -it --name some-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw db/mysql
```
This command exposes the mysql to the host. Feel free to replace `my-secret-pw` with any password of your choice for the root. Non-root users are not supported. Warnings may appear from MySQL service but no errors should appear. If you see `MySQL Community Server 5.7.21 is running.` then you should be safe. 

For development purposes, you may need to run these commands in MySQL CLI in the container:

```
mysql> CREATE USER 'username'@'%' IDENTIFIED BY 'password';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'username'@'%'
```

These commands will create a user named `username` with password `password`. You can then access the database from any MySQL GUI such as MySQL Workbench. The `root` user is disable for non-local access.

## Connect MySQL to another docker container
```
$ docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql
```
This command is used to connect this MySQL server to another application docker. 