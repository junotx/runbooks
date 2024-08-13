
# KubeAPITerminatedRequests

## 含义

APIServer 终止接收到的请求占比超过 20%。

## 影响

客户端将不能与集群进行交互。一个集群内的服务也许不可用。

## 诊断

查询指标 `apiserver_flowcontrol_rejected_requests_total` 确认是哪一个 flow_schema 在限制到 APIServer 的流量，以及相关的资源和 subject 信息。 