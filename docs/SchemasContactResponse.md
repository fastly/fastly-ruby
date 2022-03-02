# Fastly::SchemasContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The alphanumeric string representing the user for this customer contact. | [optional] |
| **contact_type** | **String** | The type of contact. | [optional] |
| **name** | **String** | The name of this contact, when user_id is not provided. | [optional] |
| **email** | **String** | The email of this contact, when a user_id is not provided. | [optional] |
| **phone** | **String** | The phone number for this contact. Required for primary, technical, and security contact types. | [optional] |
| **customer_id** | **String** | The alphanumeric string representing the customer for this customer contact. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

