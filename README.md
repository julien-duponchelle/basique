# Basique

This the base project I'm using for doing quick proof of concepts with Ruby 
on Rails.


It's provide:

* Ruby on Rails
* Tailwind
* Guard for auto test the changes
* Live Reload
* A full featured articles models + controller for embeding a blog
* Auth with Devise
* Backoffice with Administrate
* PostgreSQL
* Good Job for background jobs


## License

Apache 2

## Setup

```
cp .env.sample .env
# Edit the .env

# Create the database
sudo -u postgres createuser --interactive

# Add pgcrypto extension
sudo su - postgres; psql USERNAME; CREATE EXTENSION pgcrypto; 
sudo su - postgres; psql USERNAME_test; CREATE EXTENSION pgcrypto; 

# Set password
sudo -u postgres psql    
postgres=# \password USERNAME
./bin/setup
```

## Start the server

```
./bin/dev
```

## Test

```
bin/rails test:all 
```

You can also run specific tests when the related files change via Guard.

## Migration

### Run the migration
```
bin/rails db:migrate
```