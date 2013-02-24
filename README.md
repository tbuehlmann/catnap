# Catnap

## About
Catnap is a simple [Sinatra](https://github.com/sinatra/sinatra "Sinatra") application that delays HTTP responses using [async_sinatra](https://github.com/raggi/async_sinatra "async_sinatra").

## Usage
Open your browser and visit [http://catnap.herokuapp.com/2](http://catnap.herokuapp.com/2 "Catnap"). The response will be delayed for 2 seconds. You get it.

## Installation
To have your own Catnap application:

1. Clone this repository.
2. `$ bundle install`
3. `$ bundle exec rackup config.ru`
4. Done.

An example application is hosted at [Heroku](https://heroku.com/ "Heroku"). The application would go to sleep after some time without any HTTP requests, so the application will request itself every 60 seconds to avoid that. You might want to change that in the catnap.rb file.
