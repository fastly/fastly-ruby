# Fastly::WafSimulateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waf_response** | **Integer** | The HTTP status code the WAF would return for the simulated request (e.g., `200` for allowed, `406` for blocked). |  |
| **signals** | [**Array&lt;WafSimulateSignal&gt;**](WafSimulateSignal.md) | List of signals detected by the WAF during simulation. Empty array when no signals are detected. |  |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

