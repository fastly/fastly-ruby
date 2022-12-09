# Fastly::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_contact_id** | **String** | The alphanumeric string representing the primary billing contact. | [optional] |
| **billing_network_type** | **String** | Customer&#39;s current network revenue type. | [optional] |
| **billing_ref** | **String** | Used for adding purchased orders to customer&#39;s account. | [optional] |
| **can_configure_wordpress** | **Boolean** | Whether this customer can view or edit wordpress. | [optional][readonly] |
| **can_reset_passwords** | **Boolean** | Whether this customer can reset passwords. | [optional][readonly] |
| **can_upload_vcl** | **Boolean** | Whether this customer can upload VCL. | [optional][readonly] |
| **force_2fa** | **Boolean** | Specifies whether 2FA is forced or not forced on the customer account. Logs out non-2FA users once 2FA is force enabled. | [optional] |
| **force_sso** | **Boolean** | Specifies whether SSO is forced or not forced on the customer account. | [optional] |
| **has_account_panel** | **Boolean** | Specifies whether the account has access or does not have access to the account panel. | [optional] |
| **has_improved_events** | **Boolean** | Specifies whether the account has access or does not have access to the improved events. | [optional] |
| **has_improved_ssl_config** | **Boolean** | Whether this customer can view or edit the SSL config. | [optional][readonly] |
| **has_openstack_logging** | **Boolean** | Specifies whether the account has enabled or not enabled openstack logging. | [optional] |
| **has_pci** | **Boolean** | Specifies whether the account can edit PCI for a service. | [optional] |
| **has_pci_passwords** | **Boolean** | Specifies whether PCI passwords are required for the account. | [optional][readonly] |
| **ip_whitelist** | **String** | The range of IP addresses authorized to access the customer account. | [optional] |
| **legal_contact_id** | **String** | The alphanumeric string identifying the account&#39;s legal contact. | [optional] |
| **name** | **String** | The name of the customer, generally the company name. | [optional] |
| **owner_id** | **String** | The alphanumeric string identifying the account owner. | [optional] |
| **phone_number** | **String** | The phone number associated with the account. | [optional] |
| **postal_address** | **String** | The postal address associated with the account. | [optional] |
| **pricing_plan** | **String** | The pricing plan this customer is under. | [optional] |
| **pricing_plan_id** | **String** | The alphanumeric string identifying the pricing plan. | [optional] |
| **security_contact_id** | **String** | The alphanumeric string identifying the account&#39;s security contact. | [optional] |
| **technical_contact_id** | **String** | The alphanumeric string identifying the account&#39;s technical contact. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

