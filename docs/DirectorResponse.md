# Fastly::DirectorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backends** | [**Array&lt;Backend&gt;**](Backend.md) | List of backends associated to a director. | [optional] |
| **capacity** | **Integer** | Unused. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **name** | **String** | Name for the Director. | [optional] |
| **quorum** | **Integer** | The percentage of capacity that needs to be up for a director to be considered up. `0` to `100`. | [optional][default to 75] |
| **shield** | **String** | Selected POP to serve as a shield for the backends. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **type** | **Integer** | What type of load balance group to use. | [optional][default to TYPE::random] |
| **retries** | **Integer** | How many backends to search if it fails. | [optional][default to 5] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **Integer** |  | [optional][readonly] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

