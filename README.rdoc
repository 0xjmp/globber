# Globber
Utilize the ruby on rails environment backed by any api server!

## Installation
In your `Gemfile`:
```ruby
gem 'globber'
```
In `config/routes.rb`:
```ruby
mount Globber::Engine => "/"
```
In `config/initializers/globber.rb`:
```ruby
Globber.configure do |c|
  c.base_uri = 'http://api.yoursite.com'
end
```
##### Now whichever route is passed to rails will be mapped to your API server.
__E.g.__ http://localhost:3000/1/caliber/popular Becomes http://api.yoursite.com/1/caliber/popular
And you receive your JSON data server-side.

## Author
[@jakenberg](https://github.com/jakenberg)