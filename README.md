# AnyCable Demo

## Installation

Demo requires Rails 6

Install the dependencies and devDependencies and start the server.

```sh
# Gemfile
gem "anycable-rails"
gem "redis"
```
```sh
# Terminal
brew install anycable-go
bundle exec anycable --server-command "anycable-go --host=localhost --port=3334"
```

```
# config/anycable.yml
development:
  redis_url: redis://localhost:6379/1
  access_logs_disabled: false

# config/environments/development.rb
config.action_cable.url = "ws://localhost:3334/cable"

# app/views/layouts/application.html.erb
<%= action_cable_meta_tag %>
```

