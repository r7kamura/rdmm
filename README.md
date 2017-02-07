# Rdmm

An API Client library for DMM written in Ruby.

## Requirements

- Ruby 2.2.2 or higher

## Installation

Add this line to your application's Gemfile:

```ruby
gem "rdmm"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install rdmm
```

## Usage

### Rdmm::Client.new

```ruby
require "rdmm"
client = Rdmm::Client.new(affiliate_id: "dummy", api_id: "dummy")
```

### Rdmm::Client#list_items

`https://api.dmm.com/affiliate/v3/ItemList?affiliate_id=dummy&api_id=dummy&site=DMM.com`

```ruby
client.list_items(site: "DMM.com")
```
