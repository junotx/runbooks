
# TargetDown

## 含义

Prometheus 拉取指标的 targets 存在故障。当 Prometheus 与一个服务中超过 10% 的 targets 不可达时，它会触发。

<details>
<summary>更多信息</summary>

Prometheus 的工作方式一般是周期性地(比如每隔30秒)向它的所有 targets 发送一个 HTTP GET 请求。因此，TargetDown 实际上意味着 Prometheus 只是无法访问您的服务，这并不一定意味着它真的宕机。如果您的服务看起来运行正常，则可能的原因如下：

- 拉取配置错误(比如 ServiceMonitor 的可能端口或路径不正确)。
- Service 配置了不正确的 label selectors 导致没有选择任何 pods。
- 网络不可达(比如配置了错误的 NetworkPolicy)。

</details>

## 影响

相应 targets 的指标不能被抓取，Prometheus 中没有相关的指标，可能影响相关监控指标的展示以及告警。

## 诊断

Prometheus UI 的 `/targets` 页展示了拉取指标的 targets，可以查看特定 targets 的指标拉取异常。  

使用 promql `up == 0` 查询拉取异常随时间变化的趋势。