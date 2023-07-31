# Fastly::PoolAdditional

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name for the Pool. | [optional] |
| **shield** | **String** | Selected POP to serve as a shield for the servers. Defaults to `null` meaning no origin shielding if not set. Refer to the [POPs API endpoint](/reference/api/utils/pops/) to get a list of available POPs used for shielding. | [optional][default to &#39;null&#39;] |
| **request_condition** | **String** | Condition which, if met, will select this configuration during a request. Optional. | [optional] |
| **tls_ciphers** | **String** | List of OpenSSL ciphers (see the [openssl.org manpages](https://www.openssl.org/docs/man1.1.1/man1/ciphers.html) for details). Optional. | [optional] |
| **tls_sni_hostname** | **String** | SNI hostname. Optional. | [optional] |
| **min_tls_version** | **Integer** | Minimum allowed TLS version on connections to this server. Optional. | [optional] |
| **max_tls_version** | **Integer** | Maximum allowed TLS version on connections to this server. Optional. | [optional] |
| **healthcheck** | **String** | Name of the healthcheck to use with this pool. Can be empty and could be reused across multiple backend and pools. | [optional] |
| **comment** | **String** | A freeform descriptive note. | [optional] |
| **type** | **String** | What type of load balance group to use. | [optional] |
| **override_host** | **String** | The hostname to [override the Host header](https://docs.fastly.com/en/guides/specifying-an-override-host). Defaults to `null` meaning no override of the Host header will occur. This setting can also be added to a Server definition. If the field is set on a Server definition it will override the Pool setting. | [optional][default to &#39;null&#39;] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

