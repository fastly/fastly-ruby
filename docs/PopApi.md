# Fastly::PopApi


```ruby
require 'fastly'
api_instance = Fastly::PopApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_pops**](PopApi.md#list_pops) | **GET** /datacenters | List Fastly POPs


## `list_pops()`

```ruby
list_pops: <Array<Pop>> # List Fastly POPs
```

Get a list of all Fastly POPs.

### Examples

```ruby
api_instance = Fastly::PopApi.new

begin
  # List Fastly POPs
  result = api_instance.list_pops
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PopApi->list_pops: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**Array&lt;Pop&gt;**](Pop.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
