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

Available options:

- `:article`
- `:article_id`
- `:content_id`
- `:floor`
- `:hits`
- `:keyword`
- `:mono_stock`
- `:offset`
- `:released_from`
- `:released_to`
- `:service`
- `:site`
- `:sort`

```ruby
client.list_items(site: "DMM.com")
```

`https://api.dmm.com/affiliate/v3/ItemList?affiliate_id=dummy&api_id=dummy&site=DMM.com`

### Rdmm::Resources::ItemResource

Available attributes:

- `actors`
- `actresses`
- `affiliate_url`
- `authors`
- `category_name`
- `content_id`
- `directors`
- `floor_code`
- `floor_name`
- `genres`
- `labels`
- `makers`
- `prices`
- `product_id`
- `released_at`
- `review_avarage`
- `review_count`
- `series_list`
- `service_code`
- `service_name`
- `title`
- `url`
- `volume`

```ruby
client.list_items(site: "DMM.com").first.title
```

<details>
<summary>output</summary>

```ruby
"キングダム"
```

</details>
