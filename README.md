Step by step to create docker:

1. Get the Laravel structure
```
cd laravel
docker-compose up
```
The laravel structure will be created.

2. Copy file `just-giving-ldd` to root directory

3. Copy file `database.sql` to root directory

4. Run `./setup.sh`
This will copy all necessary files and build, push docker.

5. Run `docker-compose.up` in root directory

6. copy the database with `cat database.sql| docker exec -i <mariadb-docker-id> mysql -umy_user -pmy_password my_database`

Done.
