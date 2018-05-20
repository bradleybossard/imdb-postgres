# imdb-postgres

Setup a PostGres database using the IMDB dataset

### Download the IMDB data

The following script downloads, unzips and performs a cleaning step on the data.

```
./download_data.sh
```

### Install postgres on ubuntu

```
sudo apt-get install --yes postgresql postgresql-client postgresql-client-common
```

Once install, you need to create a user and a database
```
sudo -u postgres createuser $USER
sudo -u postgres createdb imdb
```

### Import data

The following script will create the table schemas and load the data in the database

```
psql imdb --file create_tables.sql
```

### Querying the data

```
psql imdb
```

### Links

[The Internals of PostgreSQL : Introduction](http://www.interdb.jp/pg/index.html)
