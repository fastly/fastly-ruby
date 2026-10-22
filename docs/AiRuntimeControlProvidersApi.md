# Fastly::AiRuntimeControlProvidersApi


```ruby
require 'fastly'
api_instance = Fastly::AiRuntimeControlProvidersApi.new
```

## Methods

> [!NOTE]
> All URIs are relative to `https://api.fastly.com`

Method | HTTP request | Description
------ | ------------ | -----------
[**arc_get_bedrock_setup**](AiRuntimeControlProvidersApi.md#arc_get_bedrock_setup) | **GET** /ai-runtime-control/v1/providers/bedrock/setup | Get Bedrock setup information
[**arc_get_models_for_provider**](AiRuntimeControlProvidersApi.md#arc_get_models_for_provider) | **GET** /ai-runtime-control/v1/providers/{provider_id}/models | Get models for a provider
[**arc_get_supported_providers**](AiRuntimeControlProvidersApi.md#arc_get_supported_providers) | **GET** /ai-runtime-control/v1/providers | Get supported providers


## `arc_get_bedrock_setup()`

```ruby
arc_get_bedrock_setup: <ArcBedrockSetupResponse> # Get Bedrock setup information
```

Returns the AI Runtime Control IAM role Amazon Resource Name (ARN) and external ID to reference in your AWS account's IAM trust policy before creating an `aws-iam` [provider connection](https://www.fastly.com/documentation/reference/api/ai-runtime-control/provider-connections#arc-create-provider-connection) to Amazon Bedrock.  Requires AWS IAM authentication to be enabled on your account. If it isn't, this endpoint returns a 404 response. 

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProvidersApi.new

begin
  # Get Bedrock setup information
  result = api_instance.arc_get_bedrock_setup
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProvidersApi->arc_get_bedrock_setup: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ArcBedrockSetupResponse**](ArcBedrockSetupResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_models_for_provider()`

```ruby
arc_get_models_for_provider(opts): <ArcModelsResponse> # Get models for a provider
```

Returns the models available for a specific provider.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProvidersApi.new
opts = {
    provider_id: 'anthropic', # String | The ID of the provider.
}

begin
  # Get models for a provider
  result = api_instance.arc_get_models_for_provider(opts)
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProvidersApi->arc_get_models_for_provider: #{e}"
end
```

### Options

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **String** | The ID of the provider. |  |

### Return type

[**ArcModelsResponse**](ArcModelsResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
## `arc_get_supported_providers()`

```ruby
arc_get_supported_providers: <ArcProvidersResponse> # Get supported providers
```

Returns the AI providers supported by AI Runtime Control, with each provider's available models nested within.

### Examples

```ruby
api_instance = Fastly::AiRuntimeControlProvidersApi.new

begin
  # Get supported providers
  result = api_instance.arc_get_supported_providers
  p result
rescue Fastly::ApiError => e
  puts "Error when calling AiRuntimeControlProvidersApi->arc_get_supported_providers: #{e}"
end
```

### Options

This endpoint does not need any parameter.

### Return type

[**ArcProvidersResponse**](ArcProvidersResponse.md)

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to README]](../../README.md)
