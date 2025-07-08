# Fastly::PurgeApi


```ruby
require 'fastly'
api_instance = Fastly::PurgeApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**bulk_purge_tag**](PurgeApi.md#bulk_purge_tag) | **POST** /service/{service_id}/purge | Purge multiple surrogate key tags
[**purge_all**](PurgeApi.md#purge_all) | **POST** /service/{service_id}/purge_all | Purge everything from a service
[**purge_single_url**](PurgeApi.md#purge_single_url) | **POST** /purge/{cached_url} | Purge a URL
[**purge_tag**](PurgeApi.md#purge_tag) | **POST** /service/{service_id}/purge/{surrogate_key} | Purge by surrogate key tag


## `bulk_purge_tag()`

```ruby
bulk_purge_tag(opts): Hash&lt;String, String&gt; # Purge multiple surrogate key tags
```

Instant Purge a particular service of items tagged with surrogate keys. Up to 256 surrogate keys can be purged in one batch request. As an alternative to sending the keys in a JSON object in the body of the request, this endpoint also supports listing keys in a <code>Surrogate-Key</code> request header, e.g. <code>Surrogate-Key: key_1 key_2 key_3</code>. 

### Examples

```ruby
api_instance = Fastly::PurgeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    fastly_soft_purge: 1, # Integer | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.
    surrogate_key: 'key_1 key_2 key_3', # String | Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified.
    purge_response: Fastly::PurgeResponse.new, # PurgeResponse | 
}

begin
  # Purge multiple surrogate key tags
  result = api_instance.bulk_purge_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PurgeApi->bulk_purge_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fastly_soft_purge** | **Integer** | If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **surrogate_key** | **String** | Purge multiple surrogate key tags using a request header. Not required if a JSON POST body is specified. | [optional] |
| **purge_response** | [**PurgeResponse**](PurgeResponse.md) |  | [optional] |

### Return type

**Hash&lt;String, String&gt;**

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `purge_all()`

```ruby
purge_all(opts): <InlineResponse200> # Purge everything from a service
```

Instant Purge everything from a service.  Purge-all requests cannot be done in soft mode and will always immediately invalidate all cached content associated with the service. To do a soft-purge-all, consider applying a constant [surrogate key](https://www.fastly.com/documentation/guides/full-site-delivery/purging/working-with-surrogate-keys/) tag (e.g., `\"all\"`) to all objects. 

### Examples

```ruby
api_instance = Fastly::PurgeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
}

begin
  # Purge everything from a service
  result = api_instance.purge_all(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PurgeApi->purge_all: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `purge_single_url()`

```ruby
purge_single_url(opts): <PurgeResponse> # Purge a URL
```

Instant Purge an individual URL.

### Examples

```ruby
api_instance = Fastly::PurgeApi.new
opts = {
    cached_url: 'www.example.com/path/to/object-to-purge', # String | URL of object in cache to be purged.
    fastly_soft_purge: 1, # Integer | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.
}

begin
  # Purge a URL
  result = api_instance.purge_single_url(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PurgeApi->purge_single_url: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fastly_soft_purge** | **Integer** | If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] |
| **cached_url** | **String** | URL of object in cache to be purged. |  |

### Return type

[**PurgeResponse**](PurgeResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `purge_tag()`

```ruby
purge_tag(opts): <PurgeResponse> # Purge by surrogate key tag
```

Instant Purge a particular service of items tagged with a Surrogate Key. Only one surrogate key can be purged at a time. Multiple keys can be purged using a batch surrogate key purge request.

### Examples

```ruby
api_instance = Fastly::PurgeApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    surrogate_key: 'key_1', # String | Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request.
    fastly_soft_purge: 1, # Integer | If present, this header triggers the purge to be 'soft', which marks the affected object as stale rather than making it inaccessible.  Typically set to \"1\" when used, but the value is not important.
}

begin
  # Purge by surrogate key tag
  result = api_instance.purge_tag(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling PurgeApi->purge_tag: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **surrogate_key** | **String** | Surrogate keys are used to efficiently purge content from cache. Instead of purging your entire site or individual URLs, you can tag related assets (like all images and descriptions associated with a single product) with surrogate keys, and these grouped URLs can be purged in a single request. |  |
| **fastly_soft_purge** | **Integer** | If present, this header triggers the purge to be &#39;soft&#39;, which marks the affected object as stale rather than making it inaccessible.  Typically set to \&quot;1\&quot; when used, but the value is not important. | [optional] |

### Return type

[**PurgeResponse**](PurgeResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
