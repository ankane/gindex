# g index

:speedboat: Instant **concurrent** index migrations for Rails

[![Build Status](https://github.com/ankane/gindex/actions/workflows/build.yml/badge.svg)](https://github.com/ankane/gindex/actions)

## Installation

Add this line to your application’s Gemfile:

```ruby
gem "gindex", group: :development
```

## How It Works

```sh
rails g index users email
```

generates:

```ruby
class AddIndexOnEmailToUsers < ActiveRecord::Migration[7.2]
  disable_ddl_transaction!

  def change
    add_index :users, :email, algorithm: :concurrently
  end
end
```

Also works with multi-column indexes

```sh
rails g index deliveries store_id delivered_at
```

## History

View the [changelog](https://github.com/ankane/gindex/blob/master/CHANGELOG.md)

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/gindex/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/gindex/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features

To get started with development:

```sh
git clone https://github.com/ankane/gindex.git
cd gindex
bundle install
```
