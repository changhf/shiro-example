客户端流程：如果需要登录首先跳到 oauth2 服务端进行登录授权，成功后服务端返回 auth code，
然后客户端使用 auth code 去服务器端换取 access token，
最好根据 access token 获取用户信息进行客户端的登录绑定