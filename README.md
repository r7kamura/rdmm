# Rdmm

[![CircleCI](https://img.shields.io/circleci/project/github/r7kamura/rdmm.svg)](https://circleci.com/gh/r7kamura/rdmm)
[![Gem Version](https://badge.fury.io/rb/rdmm.svg)](https://rubygems.org/gems/rdmm)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/r7kamura/rdmm)

An API Client library for DMM Web Service written in Ruby.

See https://affiliate.dmm.com/api/ for more details about DMM Web Service.

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

### Rdmm::Client#list_actresses

Available options:

- `:id`
- `:birthday_from`
- `:birthday_to`
- `:bust_from`
- `:bust_to`
- `:height_from`
- `:height_to`
- `:hip_from`
- `:hip_to`
- `:hits`
- `:initial`
- `:keyword`
- `:offset`
- `:sort`
- `:waist_from`
- `:waist_to`

```ruby
client.list_actresses
```

`https://api.dmm.com/affiliate/v3/ActressSearch?affiliate_id=dummy&api_id=dummy`

### Rdmm::Client#list_authors

Available options:

- `:floor_id`
- `:hits`
- `:initial`
- `:offset`

```ruby
client.list_authors(floor_id: 27)
```

`https://api.dmm.com/affiliate/v3/AuthorSearch?affiliate_id=dummy&api_id=dummy&floor_id=27`

### Rdmm::Client#list_floors

```ruby
client.list_floors
```

`https://api.dmm.com/affiliate/v3/FloorList?affiliate_id=dummy&api_id=dummy`

### Rdmm::Client#list_genres

Available options:

- `:floor_id`
- `:hits`
- `:initial`
- `:offset`

```ruby
client.list_genres(floor_id: 27)
```

`https://api.dmm.com/affiliate/v3/GenreSearch?affiliate_id=dummy&api_id=dummy&floor_id=27`

### Rdmm::Client#list_items

Available options:

- `:article`
- `:article_id`
- `:content_id`
- `:floor_code`
- `:hits`
- `:keyword`
- `:mono_stock`
- `:offset`
- `:released_from`
- `:released_to`
- `:service_code`
- `:site`
- `:sort`

```ruby
client.list_items(site: "DMM.com")
```

`https://api.dmm.com/affiliate/v3/ItemList?affiliate_id=dummy&api_id=dummy&site=DMM.com`

### Rdmm::Client#list_makers

Available options:

- `:floor_id`
- `:hits`
- `:initial`
- `:offset`

```ruby
client.list_makers(floor_id: 27)
```

`https://api.dmm.com/affiliate/v3/MakerSearch?affiliate_id=dummy&api_id=dummy&floor_id=27`

### Rdmm::Client#list_series

Available options:

- `:floor_id`
- `:hits`
- `:initial`
- `:offset`

```ruby
client.list_series(floor_id: 27)
```

`https://api.dmm.com/affiliate/v3/SeriesSearch?affiliate_id=dummy&api_id=dummy&floor_id=27`

### Rdmm::Responses::BaseResponse

Available methods:

- `#body`
- `#each`
- `#errors`
- `#first_position`
- `#has_error?`
- `#has_next_page?`
- `#headers`
- `#message`
- `#next_page_offset`
- `#resources`
- `#result_count`
- `#status`
- `#total_count`

### Rdmm::Resources::ActressResource

Available attributes:

- `#birthday`
- `#blood_type`
- `#bust`
- `#cup`
- `#height`
- `#hobbies`
- `#id`
- `#image_url_large`
- `#image_url_small`
- `#list_url_digital`
- `#list_url_mono`
- `#list_url_monthly`
- `#list_url_ppm`
- `#list_url_rental`
- `#name`
- `#prefectures`
- `#ruby`
- `#waist`

### Rdmm::Resources::AuthorResource

Available attributes:

- `#another_name`
- `#id`
- `#list_url`
- `#name`
- `#ruby`

### Rdmm::Resources::FloorResource

Available attributes:

- `#code`
- `#id`
- `#name`
- `#service_code`
- `#service_name`
- `#site_code`
- `#site_name`

### Rdmm::Resources::GenreResource

Available attributes:

- `#id`
- `#list_url`
- `#name`
- `#ruby`

### Rdmm::Resources::ItemResource

Available attributes:

- `#actors`
- `#actresses`
- `#affiliate_url`
- `#authors`
- `#category_name`
- `#content_id`
- `#directors`
- `#floor_code`
- `#floor_name`
- `#genres`
- `#labels`
- `#makers`
- `#prices`
- `#product_id`
- `#released_at`
- `#review_average`
- `#review_count`
- `#series`
- `#service_code`
- `#service_name`
- `#title`
- `#url`
- `#volume`

### Rdmm::Resources::MakerResource

Available attributes:

- `#id`
- `#list_url`
- `#name`
- `#ruby`


### Rdmm::Resources::SeriesResource

Available attributes:

- `#id`
- `#list_url`
- `#name`
- `#ruby`
