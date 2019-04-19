# README

This is a simple chat engine built with Rails 5's ActionCable websockets implementation.

## Ruby version

This is built with Ruby 2.6.1 running in rbenv on Microsoft Ubunutu. See <https://github.com/MatthewSchultz/Install-Rails-on-WSL> for how to set this up. Obviously it should work in any environment that rails supports runs on, and is intended to be deployed on Heroku and stuff - but I don't care about that stuff.....

## System dependencies

* Ruby
* Postgresql
* Rails 5.2.3 or better
* Redis

## Configuration

This app uses the new credentials.yml.enc file from Rails 5.2. Users should generate a new credentials file with their own keys.

1. Delete ```/config/credentials.yml.enc```.
2. Run ```EDITOR=vim rails credentials:edit``` - this creates ```/config/credentials.yml.enc```.
3. Copy the stuff from ```/config/credentials.yml```.
4. Fill in your own keys and stuff.

## Database creation

The app does not include database.yml in its repository - this is intentional.

1. Use the sample database.yml.sample file to make a database.yml file for your app; ```cp config/database.yml.sample config/database.yml``` (or shit - make one from scratch if you want to - this is your app - don't listen to me)
2. Make sure to setup your database.yml file with stuff like your password, etc.
3. Run ```rails db:create:all```

## Database initialization

```
rails db:seed
```

## How to run the test suite

...wait there's a test suite?

## Services (job queues, cache servers, search engines, etc.)

...stuff and things here. For now, nothing...

## Deployment instructions

How to deploy this:

### Step 1

Deploy this shit somehow. Probably git, right?

### Step 2

Setup ```master.key``` as an environment variable - for example on heroku: ```heroku config:set RAILS_MASTER_KEY=<your-master-key-here>```

### Step 3

If your chosen environment requires it, upload a database.yml file.
