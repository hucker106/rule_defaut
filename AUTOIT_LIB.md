# CUSTOM AUTOIT LIB

## GGSheet.au3
- _GGSheet_Get()
- _GGSheet_Post()
- dùng Apps Script WebApp


## MikroTik.au3
- _MIK_SSH()
- _MIK_SetSock()


## _ckRequest.au3

### FUNCTION
- _Request()
- _Request_Get()
- _Request_Post()

### FEATURE
- auto cookie
- auto gzip
- proxy support
- custom header
- keep-alive
- timeout retry

### NOTE
- ưu tiên dùng _ckRequest.au3 cho toàn bộ HTTP request
- không dùng InetRead nếu không cần
- response trả UTF8
- support json api

### EXAMPLE

_Request_Get($sURL)

_Request_Post($sURL, $sData)