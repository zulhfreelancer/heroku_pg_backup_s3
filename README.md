### Backup Heroku PG Database To S3 Using Rake Task

Sample Rails project to demonstrate Heroku Postgres backup to AWS S3 using rake task (Heroku Scheduler).

Main dependency - [pgbackups-archive gem](https://github.com/kjohnston/pgbackups-archive).

### Important

- [Where to get `HEROKU_API_KEY`?](https://github.com/kjohnston/pgbackups-archive/issues/65)
- [How to create AWS IAM user with S3 access?](https://www.youtube.com/watch?v=p4ZkTtjnWgM) - just watch until 1:40 and click `Download credentials` button that you see on the screen

### How to import *.dump file to local machine?

#### Step 1

Enter `app/config/database.yml`. Copy your localhost database name.

Example:

```
development:
  adapter:    postgresql
  database:   YOUR_DATABASE_NAME_HERE
  pool:       5
  timeout:    5000
```

Step 2

```
$ rake db:drop db:create
$ pg_restore -O -d YOUR_DATABASE_NAME_HERE latest.dump
$ rake db:migrate
```
