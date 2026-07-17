# Fastly::RoutingConfigResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alphanumeric string identifying the routing config. | [optional][readonly] |
| **name** | **String** | The user-defined name for the routing config. | [optional] |
| **state** | [**RoutingConfigState**](RoutingConfigState.md) |  | [optional] |
| **activated_at** | **Time** | Timestamp of when the version was most recently activated. `null` if the version has never been activated. | [optional][readonly] |
| **links** | **Hash&lt;String, String&gt;** | HATEOAS links to related resources. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

