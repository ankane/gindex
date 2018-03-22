# g index

:speedboat: Instant **concurrent** index migrations for Rails

```ruby
rails g index users email
```

Also works with multi-column indexes

```ruby
rails g index deliveries store_id delivered_at
```

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'gindex', group: :development
```

And then execute:

```sh
bundle
```

## TODO

- add `:name` option to long index names

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/gindex/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/gindex/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
