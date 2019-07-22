[![Gem Version](https://badge.fury.io/rb/tether-rails.svg)](https://badge.fury.io/rb/tether-rails)
# tether-rails

This gem wraps the [Tether](http://tether.io/docs/welcome/) JavaScript library so that it can be included easily in the Rails asset pipeline.


## Installation and Usage

Include tether-rails application's Gemfile
```ruby
gem 'tether-rails'
```
and run `bundle install`

Then, add tether-rails to your `application.js` manifest
```
//= require tether
```
and include the stylesheets in your `application.css` manifest
```
*= require tether
```

This gem also includes the CSS for `theme-basic`, `theme-arrows`, and `theme-arrows-dark`. You can include whichever files you need in your `application.css` with
```
*= require tether-theme-basic
*= require tether-theme-arrows
*= require tether-theme-arrows-dark
```


## Versioning

The gem version will mirror the version of Tether that is included.


## Contributing

If you need a newer version of Tether:

1. Fork this repo.
2. Update the vendored files with the newest release of [Tether](https://github.com/HubSpot/tether)
3. Update `lib/tether-rails/version.rb` to match the version of Tether that you updated to.
4. Push to your repo and create a pull request.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
