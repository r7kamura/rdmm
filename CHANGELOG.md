## 0.1.0

- Add `Rdmm::Client#list_actresses`
- Add `Rdmm::Client#list_authors`
- Add `Rdmm::Client#list_floors`
- Add `Rdmm::Client#list_genres`
- Add `Rdmm::Client#list_makers`
- Rename `#series_id` to `#id` on `Rdmm::Resources::SeriesResource`

## 0.0.4

- Declare required ruby version on gemspec

## 0.0.3

- Add `Rdmm::Responses::BaseResponse#first_position`
- Add `Rdmm::Responses::BaseResponse#has_next_page?`
- Add `Rdmm::Responses::BaseResponse#next_page_offset`
- Add `Rdmm::Responses::BaseResponse#result_count`
- Fix broken `Rdmm::Resources::ItemResource#review_average`
- Cast `Rdmm::Responses::BaseResponse#total_count` from `String` to `Integer`

## 0.0.2

- Add `Rdmm::Responses::BaseResponse#total_count`
- Add `Rdmm::Client#list_series`
- Rename `#series_list` to `#series`

## 0.0.1

- 1st Release :tada:
- Add `Rdmm::Client#list_items`
