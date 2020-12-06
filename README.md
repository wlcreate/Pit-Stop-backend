# Pit Stop Backend
This is the Ruby on Rails API for Pit Stop. Pit Stop is a travel journal web application that changes the way users remember their trips. Instead of creating daily journal entries, users add places they visited on a trip and create reflections on those places. This was inspired by the idea of [memory space](https://en.wikipedia.org/wiki/Memory_space_(social_science)) (Les Lieux de Mémoire) in that our memories are often tied to the places we have been.

[Link to frontend](https://github.com/wlcreate/Mod5Project_frontend)

## Getting Started

### Early Steps
Before cloning down, you will need Ruby on Rails and Postgres.
1. Install Ruby with Homebrew
``` 
brew install Ruby 
```
2. Install [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)
```
gem install rails
```
3. Install PostgreSQL with Homebrew
```
brew install postgresql
```

### Downloading this project
1. Clone this repo and cd into the folder
2. Bundle install to get all required dependencies
```
bundle install
```
3. Set up the PostgreSQL database
```
rails db:create
```
4. Create migrations and seed
```
rails db:migrate
rails db:seed
```
5. Launch the rails server!
```
rails s
```

## Acknowledgements
I would like to thank:
  * Sylwia Vargas
  * Eric Kim
  * Annie Zheng
  * the Code Bender Cohort
