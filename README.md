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


## License

Apache 2

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