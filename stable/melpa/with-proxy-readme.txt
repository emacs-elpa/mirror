Evaluate expressions with proxy

,---
| (with-proxy
|   ...)
|
| ;; equals to:
| (with-proxy
|   :http-server "127.0.0.1:1081"
|   :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
|   ...)
|
| ;; equals to:
| (with-url-proxy
|   :http-server :http-server "127.0.0.1:1081"
|   :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
|   (with-shell-proxy
|     :http-server :http-server "127.0.0.1:1081"
|     :no-proxy '("localhost" "127.0.0.1" "192.168.*" "10.*")
|     ...))
`---
