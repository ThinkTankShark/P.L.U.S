# README

* Ruby version: 2.3.0
* Rails version: 5.0.0.rc1

* System dependencies
```
  # Serialize ActiveRecord data
  gem 'active_model_serializers', '~> 0.10.0'

  gem 'twitter'

  // Enable CORS functionality
  gem 'rack-cors'

  // Authentication setup
  gem 'devise'

  // Token based authentication for Rails JSON APIs
  gem 'devise_token_auth', github:"lynndylanhurley/devise_token_auth", branch: "master"

  gem 'omniauth' # required for devise_token_auth

  // omniauth
  gem 'omniauth-twitter'
  gem 'omniauth-facebook'
  gem 'omniauth-google-oauth2'
  gem 'jwt', '~> 1.5.4'
  
  // hide environment keys
  gem 'figaro'
```

###Getting Started###

####Familiar with Git?#####
Checkout this repo, install dependencies, then start the gulp process with the following:

```
	> git clone git@github.com:ThinkTankShark/P.L.U.S.git
	> cd P.L.U.S
	> bundle install                  // Install all gem dependencies
	> rake db:create                  // Create Database 
	> rake db:migrate                 // Migrate Database
	> rake db:seed                    // Seed Database
	> rails server                    // Start Rails Server
```

####Not Familiar with Git?#####
Click [here](https://github.com/ThinkTankShark/P.L.U.S.git) then download the .zip file.  Extract the contents of the zip file, then open your terminal, change to the project directory, and:

```
	> bundle install
	> rails server
```

###Deployment instructions###
To deploy to heroku, please follow these instructions:

```
	> heroku login
	> heroku create
	Creating app... done, safe-mesa-35727
  https://safe-mesa-35727.herokuapp.com/ | https://git.heroku.com/safe-mesa-35727.git
```

You can verify that the remote was added to your project by running
```
	> git config --list | grep heroku
	remote.heroku.url=https://git.heroku.com/safe-mesa-35727.git
  remote.heroku.fetch=+refs/heads/*:refs/remotes/heroku/*
```

Deploy your code:
```
	> git push heroku master
	remote: Compressing source files... done.
  remote: Building source:
  remote:
  remote: -----> Ruby app detected
  remote: -----> Compiling Ruby/Rails
  remote: -----> Using Ruby version: ruby-2.3.1
  remote: -----> Installing dependencies using bundler 1.11.2
  remote:        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
  remote:        Warning: the running version of Bundler is older than the version that created the lockfile. We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
  remote:        Fetching gem metadata from https://rubygems.org/...........
  remote:        Fetching version metadata from https://rubygems.org/...
  remote:        Fetching dependency metadata from https://rubygems.org/..
  remote:        Using json 1.8.3
  remote:        Installing rake 11.1.2
  remote:        Installing minitest 5.9.0
  remote:        Installing i18n 0.7.0
  remote:        Installing thread_safe 0.3.5
  remote:        Installing erubis 2.7.0
  remote:        Installing builder 3.2.2
  remote:        Installing mini_portile2 2.0.0
  remote:        Installing rack 1.6.4
  remote:        Installing coffee-script-source 1.10.0
  remote:        Installing mime-types-data 3.2016.0521
  remote:        Installing arel 6.0.3
  remote:        Installing execjs 2.7.0
  remote:        Installing concurrent-ruby 1.0.2
  remote:        Installing thor 0.19.1
  remote:        Using bundler 1.11.2
  remote:        Installing pg 0.18.4 with native extensions
  remote:        Installing multi_json 1.12.1
  remote:        Installing rails_serve_static_assets 0.0.5
  remote:        Installing rails_stdout_logging 0.0.4
  remote:        Installing sass 3.4.22
  remote:        Installing tilt 2.0.4
  remote:        Installing tzinfo 1.2.2
  remote:        Installing rdoc 4.2.2
  remote:        Installing nokogiri 1.6.7.2 with native extensions
  remote:        Installing rack-test 0.6.3
  remote:        Installing mime-types 3.1
  remote:        Installing coffee-script 2.4.1
  remote:        Installing uglifier 3.0.0
  remote:        Installing sprockets 3.6.0
  remote:        Installing rails_12factor 0.0.3
  remote:        Installing activesupport 4.2.6
  remote:        Installing sdoc 0.4.1
  remote:        Installing mail 2.6.4
  remote:        Installing rails-deprecated_sanitizer 1.0.3
  remote:        Installing globalid 0.3.6
  remote:        Installing activemodel 4.2.6
  remote:        Installing jbuilder 2.4.1
  remote:        Installing activejob 4.2.6
  remote:        Installing activerecord 4.2.6
  remote:        Installing rails-dom-testing 1.0.7
  remote:        Installing loofah 2.0.3
  remote:        Installing rails-html-sanitizer 1.0.3
  remote:        Installing actionview 4.2.6
  remote:        Installing actionpack 4.2.6
  remote:        Installing railties 4.2.6
  remote:        Installing sprockets-rails 3.0.4
  remote:        Installing actionmailer 4.2.6
  remote:        Installing rails 4.2.6
  remote:        Installing coffee-rails 4.1.1
  remote:        Installing jquery-rails 4.1.1
  remote:        Installing sass-rails 5.0.4
  remote:        Installing turbolinks 2.5.3
  remote:        Bundle complete! 13 Gemfile dependencies, 53 gems now installed.
  remote:        Gems in the groups development and test were not installed.
  remote:        Bundled gems are installed into ./vendor/bundle.
  remote:        Post-install message from rdoc:
  remote:        Depending on your version of ruby, you may need to install ruby rdoc/ri data:
  remote:        <= 1.8.6 : unsupported
  remote:        = 1.8.7 : gem install rdoc-data; rdoc-data --install
  remote:        = 1.9.1 : gem install rdoc-data; rdoc-data --install
  remote:        >= 1.9.2 : nothing to do! Yay!
  remote:        Bundle completed (30.50s)
  remote:        Cleaning up the bundler cache.
  remote:        Warning: the running version of Bundler is older than the version that created the lockfile. We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
  remote: -----> Preparing app for Rails asset pipeline
  remote:        Running: rake assets:precompile
  remote:        I, [2016-05-26T19:33:05.012902 #1067]  INFO -- : Writing /tmp/build_14c78c3c9f70b1508642d34e58038134/public/assets/application-b0426e496058d3d784915d30693e0d86e3f1908fa66e11169e89ec2d37658ebc.js
  remote:        I, [2016-05-26T19:33:05.013422 #1067]  INFO -- : Writing /tmp/build_14c78c3c9f70b1508642d34e58038134/public/assets/application-b0426e496058d3d784915d30693e0d86e3f1908fa66e11169e89ec2d37658ebc.js.gz
  remote:        I, [2016-05-26T19:33:05.025799 #1067]  INFO -- : Writing /tmp/build_14c78c3c9f70b1508642d34e58038134/public/assets/application-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css
  remote:        I, [2016-05-26T19:33:05.026153 #1067]  INFO -- : Writing /tmp/build_14c78c3c9f70b1508642d34e58038134/public/assets/application-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css.gz
  remote:        Asset precompilation completed (4.20s)
  remote:        Cleaning assets
  remote:        Running: rake assets:clean
  remote:
  remote: ###### WARNING:
  remote:        No Procfile detected, using the default web server.
  remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
  remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
  remote:
  remote: -----> Discovering process types
  remote:        Procfile declares types     -> (none)
  remote:        Default types for buildpack -> console, rake, web, worker
  remote:
  remote: -----> Compressing...
  remote:        Done: 32.2M
  remote: -----> Launching...
  remote:        Released v5
  remote:        https://safe-mesa-35727.herokuapp.com/ deployed to Heroku
  remote:
  remote: Verifying deploy... done.
  To https://git.heroku.com/safe-mesa-35727.git
   * [new branch]      master -> master
```

####Migrate your database#####
If you are using the database in your application you need to manually migrate the database by running:

```
	> heroku run rake db:migrate
```

####Visit your application#####
Let’s ensure we have one dyno running the web process type:

```
	> heroku ps:scale web=1
```

You can check the state of the app’s dynos. The heroku ps command lists the running dynos of your application:
```
	> heroku ps
  === web (Standard-1X): bin/rails server -p $PORT -e $RAILS_ENV (1)
  web.1: starting 2016/05/26 14:33:18 -0500 (~ 15s ago)
```

####Open Your App#####
```
	> heroku open
```

###How to run the test suite###
WILL UPDATE SOON
