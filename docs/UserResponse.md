# Fastly::UserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** |  | [optional][readonly] |
| **name** | **String** | The real life name of the user. | [optional] |
| **limit_services** | **Boolean** | Indicates that the user has limited access to the customer&#39;s services. | [optional] |
| **locked** | **Boolean** | Indicates whether the is account is locked for editing or not. | [optional] |
| **require_new_password** | **Boolean** | Indicates if a new password is required at next login. | [optional] |
| **role** | [**RoleUser**](RoleUser.md) |  | [optional] |
| **two_factor_auth_enabled** | **Boolean** | Indicates if 2FA is enabled on the user. | [optional] |
| **two_factor_setup_required** | **Boolean** | Indicates if 2FA is required by the user&#39;s customer account. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **email_hash** | **String** | The alphanumeric string identifying a email login. | [optional][readonly] |
| **customer_id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

