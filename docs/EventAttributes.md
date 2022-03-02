# Fastly::EventAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin** | **Boolean** | Indicates if event was performed by Fastly. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **customer_id** | **String** |  | [optional][readonly] |
| **description** | **String** | Description of the event. | [optional] |
| **event_type** | **String** | Type of event. Can be used with `filter[event_type]` | [optional] |
| **ip** | **String** | IP addresses that the event was requested from. | [optional] |
| **metadata** | **Object** | Hash of key value pairs of additional information. | [optional] |
| **service_id** | **String** |  | [optional][readonly] |
| **user_id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

