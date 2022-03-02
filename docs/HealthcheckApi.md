# Fastly::HealthcheckApi


```ruby
require 'fastly'
api_instance = Fastly::HealthcheckApi.new
```

## Methods

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_healthcheck**](HealthcheckApi.md#create_healthcheck) | **POST** /service/{service_id}/version/{version_id}/healthcheck | Create a healthcheck |
| [**delete_healthcheck**](HealthcheckApi.md#delete_healthcheck) | **DELETE** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Delete a healthcheck |
| [**get_healthcheck**](HealthcheckApi.md#get_healthcheck) | **GET** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Get a healthcheck |
| [**list_healthchecks**](HealthcheckApi.md#list_healthchecks) | **GET** /service/{service_id}/version/{version_id}/healthcheck | List healthchecks |
| [**update_healthcheck**](HealthcheckApi.md#update_healthcheck) | **PUT** /service/{service_id}/version/{version_id}/healthcheck/{healthcheck_name} | Update a healthcheck |


## `create_healthcheck()`

```ruby
create_healthcheck(opts): <HealthcheckResponse> # Create a healthcheck
```

Create a healthcheck for a particular service and version.

### Examples

```ruby
api_instance = Fastly::HealthcheckApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    check_interval: 56, # Integer | How often to run the healthcheck in milliseconds.
    comment: 'comment_example', # String | A freeform descriptive note.
    expected_response: 56, # Integer | The status code expected from the host.
    host: 'host_example', # String | Which host to check.
    http_version: 'http_version_example', # String | Whether to use version 1.0 or 1.1 HTTP.
    initial: 56, # Integer | When loading a config, the initial number of probes to be seen as OK.
    method: 'method_example', # String | Which HTTP method to use.
    name: 'name_example', # String | The name of the healthcheck.
    path: 'path_example', # String | The path to check.
    threshold: 56, # Integer | How many healthchecks must succeed to be considered healthy.
    timeout: 56, # Integer | Timeout in milliseconds.
    window: 56, # Integer | The number of most recent healthcheck queries to keep for this healthcheck.
}

begin
  # Create a healthcheck
  result = api_instance.create_healthcheck(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HealthcheckApi->create_healthcheck: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **check_interval** | **Integer** | How often to run the healthcheck in milliseconds. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **expected_response** | **Integer** | The status code expected from the host. | [optional] |
| **host** | **String** | Which host to check. | [optional] |
| **http_version** | **String** | Whether to use version 1.0 or 1.1 HTTP. | [optional] |
| **initial** | **Integer** | When loading a config, the initial number of probes to be seen as OK. | [optional] |
| **method** | **String** | Which HTTP method to use. | [optional] |
| **name** | **String** | The name of the healthcheck. | [optional] |
| **path** | **String** | The path to check. | [optional] |
| **threshold** | **Integer** | How many healthchecks must succeed to be considered healthy. | [optional] |
| **timeout** | **Integer** | Timeout in milliseconds. | [optional] |
| **window** | **Integer** | The number of most recent healthcheck queries to keep for this healthcheck. | [optional] |

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `delete_healthcheck()`

```ruby
delete_healthcheck(opts): <InlineResponse200> # Delete a healthcheck
```

Delete the healthcheck for a particular service and version.

### Examples

```ruby
api_instance = Fastly::HealthcheckApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    healthcheck_name: 'healthcheck_name_example', # String | The name of the healthcheck.
}

begin
  # Delete a healthcheck
  result = api_instance.delete_healthcheck(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HealthcheckApi->delete_healthcheck: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **healthcheck_name** | **String** | The name of the healthcheck. |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `get_healthcheck()`

```ruby
get_healthcheck(opts): <HealthcheckResponse> # Get a healthcheck
```

Get the healthcheck for a particular service and version.

### Examples

```ruby
api_instance = Fastly::HealthcheckApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    healthcheck_name: 'healthcheck_name_example', # String | The name of the healthcheck.
}

begin
  # Get a healthcheck
  result = api_instance.get_healthcheck(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HealthcheckApi->get_healthcheck: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **healthcheck_name** | **String** | The name of the healthcheck. |  |

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `list_healthchecks()`

```ruby
list_healthchecks(opts): <Array<HealthcheckResponse>> # List healthchecks
```

List all of the healthchecks for a particular service and version.

### Examples

```ruby
api_instance = Fastly::HealthcheckApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
}

begin
  # List healthchecks
  result = api_instance.list_healthchecks(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HealthcheckApi->list_healthchecks: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |

### Return type

[**Array&lt;HealthcheckResponse&gt;**](HealthcheckResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `update_healthcheck()`

```ruby
update_healthcheck(opts): <HealthcheckResponse> # Update a healthcheck
```

Update the healthcheck for a particular service and version.

### Examples

```ruby
api_instance = Fastly::HealthcheckApi.new
opts = {
    service_id: 'service_id_example', # String | Alphanumeric string identifying the service.
    version_id: 56, # Integer | Integer identifying a service version.
    healthcheck_name: 'healthcheck_name_example', # String | The name of the healthcheck.
    check_interval: 56, # Integer | How often to run the healthcheck in milliseconds.
    comment: 'comment_example', # String | A freeform descriptive note.
    expected_response: 56, # Integer | The status code expected from the host.
    host: 'host_example', # String | Which host to check.
    http_version: 'http_version_example', # String | Whether to use version 1.0 or 1.1 HTTP.
    initial: 56, # Integer | When loading a config, the initial number of probes to be seen as OK.
    method: 'method_example', # String | Which HTTP method to use.
    name: 'name_example', # String | The name of the healthcheck.
    path: 'path_example', # String | The path to check.
    threshold: 56, # Integer | How many healthchecks must succeed to be considered healthy.
    timeout: 56, # Integer | Timeout in milliseconds.
    window: 56, # Integer | The number of most recent healthcheck queries to keep for this healthcheck.
}

begin
  # Update a healthcheck
  result = api_instance.update_healthcheck(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling HealthcheckApi->update_healthcheck: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_id** | **String** | Alphanumeric string identifying the service. |  |
| **version_id** | **Integer** | Integer identifying a service version. |  |
| **healthcheck_name** | **String** | The name of the healthcheck. |  |
| **check_interval** | **Integer** | How often to run the healthcheck in milliseconds. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **expected_response** | **Integer** | The status code expected from the host. | [optional] |
| **host** | **String** | Which host to check. | [optional] |
| **http_version** | **String** | Whether to use version 1.0 or 1.1 HTTP. | [optional] |
| **initial** | **Integer** | When loading a config, the initial number of probes to be seen as OK. | [optional] |
| **method** | **String** | Which HTTP method to use. | [optional] |
| **name** | **String** | The name of the healthcheck. | [optional] |
| **path** | **String** | The path to check. | [optional] |
| **threshold** | **Integer** | How many healthchecks must succeed to be considered healthy. | [optional] |
| **timeout** | **Integer** | Timeout in milliseconds. | [optional] |
| **window** | **Integer** | The number of most recent healthcheck queries to keep for this healthcheck. | [optional] |

### Return type

[**HealthcheckResponse**](HealthcheckResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
