# Fastly::PublicIpListApi


```ruby
require 'fastly'
api_instance = Fastly::PublicIpListApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**list_fastly_ips**](PublicIpListApi.md#list_fastly_ips) | **GET** /public-ip-list | List Fastly&#39;s public IPs


## `list_fastly_ips()`

```ruby
list_fastly_ips: <PublicIpList> # List Fastly's public IPs
```

List the public IP addresses for the Fastly network.

### Examples

```ruby
api_instance = Fastly::PublicIpListApi.new

begin
  # List Fastly's public IPs
  result = api_instance.list_fastly_ips
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PublicIpListApi->list_fastly_ips: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**PublicIpList**](PublicIpList.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
