# Fastly::DashboardItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | A human-readable title for the dashboard item |  |
| **subtitle** | **String** | A human-readable subtitle for the dashboard item. Often a description of the visualization. |  |
| **data_source** | [**DashboardItemPropertyDataSource**](DashboardItemPropertyDataSource.md) |  |  |
| **visualization** | [**DashboardItemPropertyVisualization**](DashboardItemPropertyVisualization.md) |  |  |
| **id** | **String** | Dashboard item identifier (UUID) | [optional][readonly] |
| **span** | **Integer** | The number of columns for the dashboard item to span. Dashboards are rendered on a 12-column grid on \&quot;desktop\&quot; screen sizes. | [optional][default to 4] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

