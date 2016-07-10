![logo](http://i.imgur.com/uHMulGP.jpg)

# OverwatchApi

[![Gem Version](https://badge.fury.io/rb/overwatch_api.svg)](https://badge.fury.io/rb/overwatch_api)

_This is a work in progress, namely because the Overwatch API isn't publicly exposed yet :P_

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'overwatch_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install overwatch_api

Create a .env file and add your [API Key]()

    $ touch .env

**In the .env file:**

    OVERWATCH_API_KEY=xxxxxxxxxxxxxxxxxxxx

## Endpoints

All endpoints available via @TODO

1. [Placeholder](#placeholder)

Examples:

#### Placeholder

```ruby
OverwatchApi::Placeholder.method(arguments)

=> {"Response"=>[],
    "Data"=>
      [{"More Data"=>"Value",
        "Even More Data"=>"Value",
        [...]
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/overwatch_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Development

    gem build overwatch_api.gemspec
    gem install ./overwatch_api-1.0.0.gem
