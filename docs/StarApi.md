# Fastly::StarApi


```ruby
require 'fastly'
api_instance = Fastly::StarApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service_star**](StarApi.md#create_service_star) | **POST** /stars | Create a star |
| [**delete_service_star**](StarApi.md#delete_service_star) | **DELETE** /stars/{star_id} | Delete a star |
| [**get_service_star**](StarApi.md#get_service_star) | **GET** /stars/{star_id} | Get a star |
| [**list_service_stars**](StarApi.md#list_service_stars) | **GET** /stars | List stars |


## `create_service_star()`

```ruby
create_service_star(opts): <StarResponse> # Create a star
```

Create star.

### Examples

```ruby
api_instance = Fastly::StarApi.new
opts = {
    star: Fastly::Star.new, # Star | 
}

begin
  # Create a star
  result = api_instance.create_service_star(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling StarApi->create_service_star: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star** | [**Star**](Star.md) |  | [optional] |

### Return type

[**StarResponse**](StarResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_service_star()`

```ruby
delete_service_star(opts) # Delete a star
```

Delete star.

### Examples

```ruby
api_instance = Fastly::StarApi.new
opts = {
    star_id: 'star_id_example', # String | Alphanumeric string identifying a star.
}

begin
  # Delete a star
  api_instance.delete_service_star(opts)
rescue Fastly::ApiError => e
  puts "Error when calling StarApi->delete_service_star: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star_id** | **String** | Alphanumeric string identifying a star. |  |

### Return type

nil (empty response body)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_service_star()`

```ruby
get_service_star(opts): <StarResponse> # Get a star
```

Show star.

### Examples

```ruby
api_instance = Fastly::StarApi.new
opts = {
    star_id: 'star_id_example', # String | Alphanumeric string identifying a star.
}

begin
  # Get a star
  result = api_instance.get_service_star(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling StarApi->get_service_star: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **star_id** | **String** | Alphanumeric string identifying a star. |  |

### Return type

[**StarResponse**](StarResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_service_stars()`

```ruby
list_service_stars: <Pagination> # List stars
```

List stars.

### Examples

```ruby
api_instance = Fastly::StarApi.new

begin
  # List stars
  result = api_instance.list_service_stars
  p result
rescue Fastly::ApiError => e
  puts "Error when calling StarApi->list_service_stars: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**Pagination**](Pagination.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
