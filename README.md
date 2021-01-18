# Pit Stop Backend
This is the Ruby on Rails API for Pit Stop. Pit Stop is a travel journal web application that changes the way users remember their trips. Instead of creating daily journal entries, users add places they visited on a trip and create reflections on those places. This was inspired by the idea of [memory space](https://en.wikipedia.org/wiki/Memory_space_(social_science)) (Les Lieux de Mémoire) in that our memories are often tied to the places we have been.

[Link to frontend](https://github.com/wlcreate/Mod5Project_frontend)

## Getting Started

### Early Steps
Before cloning down, you will need Ruby on Rails and Postgres.
1. Install [Ruby](https://www.ruby-lang.org/en/) with Homebrew
``` 
brew install Ruby 
```
2. Install [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)
```
gem install rails
```
3. Install [PostgreSQL](https://www.postgresql.org) with Homebrew
```
brew install postgresql
```
4. Sign up for a free [Cloudinary](https://cloudinary.com) account

### Downloading this project
1. Clone this repo and cd into the folder
2. Bundle install to get all required dependencies
```
bundle install
```
3. Install Figaro via the Terminal (which creates the ```application.yaml``` file and adds it to .gitignore)
```
bundle exec figaro install
```
4. Go to ```./config/application.yml``` and add your Cloudinary cloud_name, api_key, and api_secret
```
cloudinary_cloud_name: "sample" 
cloudinary_api_key: "sample"
cloudinary_api_secret: "sample"
```
5. Set up the PostgreSQL database
```
rails db:create
```
6. Create migrations and seed
```
rails db:migrate
rails db:seed
```
7. Launch the rails server!
```
rails s
```

## Acknowledgements
I would like to thank:
  * Sylwia Vargas
  * Eric Kim
  * Annie Zheng
  * the Code Bender Cohort
