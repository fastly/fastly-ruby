# Fastly::NgwafSimulateApi


```ruby
require 'fastly'
api_instance = Fastly::NgwafSimulateApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**ngwaf_simulate_waf_request**](NgwafSimulateApi.md#ngwaf_simulate_waf_request) | **POST** /ngwaf/v1/workspaces/{workspace_id}/simulate | Simulate a WAF request


## `ngwaf_simulate_waf_request()`

```ruby
ngwaf_simulate_waf_request(opts): <WafSimulateResponse> # Simulate a WAF request
```

Simulates a request through the workspace's WAF configuration and returns the WAF response code and any signals that would be detected. The operation is stateless — no simulation data is persisted. 

### Examples

```ruby
api_instance = Fastly::NgwafSimulateApi.new
opts = {
    workspace_id: 'SU1Z0isxPaozGVKXdv0eY', # String | The ID of the workspace.
    waf_simulate_request: Fastly::WafSimulateRequest.new({request: 'POST /login HTTP/1.1
Host: example.com
Content-Type: application/x-www-form-urlencoded

username=admin&password=1' OR '1'='1'}), # WafSimulateRequest | 
}

begin
  # Simulate a WAF request
  result = api_instance.ngwaf_simulate_waf_request(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling NgwafSimulateApi->ngwaf_simulate_waf_request: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The ID of the workspace. |  |
| **waf_simulate_request** | [**WafSimulateRequest**](WafSimulateRequest.md) |  |  |

### Return type

[**WafSimulateResponse**](WafSimulateResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
