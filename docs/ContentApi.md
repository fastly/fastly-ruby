# Fastly::ContentApi


```ruby
require 'fastly'
api_instance = Fastly::ContentApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**content_check**](ContentApi.md#content_check) | **GET** /content/edge_check | Check status of content in each POP&#39;s cache


## `content_check()`

```ruby
content_check(opts): <Array<Content>> # Check status of content in each POP's cache
```

Retrieve headers and MD5 hash of the content for a particular URL from each Fastly edge server. This API is limited to 200 requests per hour. If the content takes too long to download, the hash will be set to `error-timeout-$pop`. If the response is too large, it will be set to `warning-too-large-$pop`.

### Examples

```ruby
api_instance = Fastly::ContentApi.new
opts = {
    url: 'https://www.example.com/foo/bar', # String | Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed.
}

begin
  # Check status of content in each POP's cache
  result = api_instance.content_check(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling ContentApi->content_check: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Full URL (host and path) to check on all nodes. if protocol is omitted, http will be assumed. | [optional] |

### Return type

[**Array&lt;Content&gt;**](Content.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
