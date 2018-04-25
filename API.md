# api接口文档

## WeixinService

### 通过wx.login获得openid

`/api/weixin/openid？js_code=...`

```json
{"openid":"oaRji5KZE-WSmM4_m2dfsUrtouVM","session_key":"9uEDTjJD4cfGffqntjRoeQ=="}
```

### 更新access_token（一般不需要前端调用）

`/api/weixin/updateaccesstoken`

```json
{"access_token":"9_otNI4kiAdULS7IYeoPxSFnek7E6Uj_QbioRWC3cSgi3fHfo3hvMbJtKdLT-BM6x9oz1pxHz5g_IPL4GE9fhUoaXSjt93axzuW_XMXdsJi0IjUOO_Lp2c7BOgnCNwQSye4qyyTlx1fsTHY5jYNFEiAHAVNM","expires_in":7200}
```

### 取得access_token

`/api/weixin/accesstoken`

```json
{"access_token":"9_otNI4kiAdULS7IYeoPxSFnek7E6Uj_QbioRWC3cSgi3fHfo3hvMbJtKdLT-BM6x9oz1pxHz5g_IPL4GE9fhUoaXSjt93axzuW_XMXdsJi0IjUOO_Lp2c7BOgnCNwQSye4qyyTlx1fsTHY5jYNFEiAHAVNM","expires_in":7200}
```