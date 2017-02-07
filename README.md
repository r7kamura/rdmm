# Rdmm

[![CircleCI](https://img.shields.io/circleci/project/github/r7kamura/rdmm.svg)](https://circleci.com/gh/r7kamura/rdmm)
[![Gem Version](https://badge.fury.io/rb/rdmm.svg)](https://rubygems.org/gems/rdmm)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/r7kamura/rdmm)

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

### Rdmm::Responses::BaseResponse

Implements `Enumerable` module.

```ruby
client.list_items(site: "DMM.com").map(&:title)
```

<details>
<summary>output</summary>

```ruby
["キングダム",
 "ハドソン川の奇跡",
 "ミュージカル『刀剣乱舞』 〜真剣乱舞祭 2016〜",
 "back number/アンコール",
 "パンフレット 舞台『刀剣乱舞』虚伝 燃ゆる本能寺（再演）",
 "終末のハーレム セミカラー版",
 "VOICEROID＋ 東北きりたん EX ダウンロード版",
 "CHAOS；CHILD",
 "【8〜14泊】Travel house 軽量 TSAロック付き 4輪 93L スーツケース レッド",
 "ミュージカル『刀剣乱舞』真剣乱舞祭 2016 （ブルーレイディスク）",
 "シン・ゴジラ",
 "東京タラレバ娘",
 "舞台『刀剣乱舞』虚伝 燃ゆる本能寺 〜再演〜",
 "キングダム",
 "宇多田ヒカル/Fantome（SHM-CD）",
 "エルダー・スクロールズ・オンライン 日本語版 （インペリアルエディション）",
 "自炊・電子書籍化キット プラス裁断機PK-513L＆ScanSnap iX500 FI-IX500A",
 "VOICEROID＋ 結月ゆかり EX ダウンロード版",
 "映画 闇金ウシジマくんthe Final",
 "トレーディングブロマイド 25枚セット 舞台『刀剣乱舞』虚伝 燃ゆる本能寺（再演）"]
```

</details>

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
