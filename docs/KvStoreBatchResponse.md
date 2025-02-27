# Fastly::KvStoreBatchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A descriptor for the response of the entire batch | [optional] |
| **type** | **String** | If an error is present in any of the requests, this field will describe that error | [optional] |
| **errors** | [**Array&lt;KvStoreBatchResponseErrors&gt;**](KvStoreBatchResponseErrors.md) | Errors which occurred while handling the items in the request | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

