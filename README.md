# ActiveRecord SingleStore Adapter

The ActiveRecod SingleStore Adapter is an ActiveRecord connection adapter based on the Mysql2 adapter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-singlestore'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-singlestore

## Usage

In you database.yml, you just have to set the adapter to singlestore:

```
default: &default
  adapter: singlestore
  encoding: utf8
  pool: 5

development:
  <<: *default
  username: root
  host: 127.0.0.1
  database: 
  password:
```

If you want to create a rowstore table, add the rowstore option. (Singlestore uses columnstore by default).

```
create_table :users, rowstore: true do |t|
  t.string :name
end
```
