# Fastly::Dashboard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Dashboard identifier (UUID) | [optional][readonly] |
| **name** | **String** | A human-readable name | [optional] |
| **description** | **String** | A short description of the dashboard | [optional] |
| **items** | [**Array&lt;DashboardItem&gt;**](DashboardItem.md) | A list of [dashboard items](#dashboard-item). | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **created_by** | [**DashboardPropertyCreatedBy**](DashboardPropertyCreatedBy.md) |  | [optional] |
| **updated_by** | [**DashboardPropertyUpdatedBy**](DashboardPropertyUpdatedBy.md) |  | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

