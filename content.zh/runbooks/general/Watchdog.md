
# Watchdog

## 含义

这个告警用来确保整个告警管道正常工作。它会一直被触发，直到一个接收器。

## 影响

如果没有被触发或没有被发送到一个接收器，这在提醒整个告警管道不再能工作了。  

> 前提是需要为该告警配置一个接收器。

## 诊断

如果为告警配置了一个接收器，但是接收器没有收到告警，检查以下可能的方面：

- alertmanager 配置错误
- 证书凭据错误
- 接收器端点错误
- 防火墙
- alertmanager 日志

## 缓解

在 KubeSphere 中，默认未为该告警配置接收器。

<details>
<summary>更多信息</summary>

在 KubeSphere 中，**_WhizardTelemetry 告警_** 扩展组件生成的告警，将经由 **_WhizardTelemetry 通知_** 扩展组件的 [alertmanager](https://github.com/prometheus/alertmanager) 和 [notification-manager](https://github.com/kubesphere/notification-manager)，发送到用户配置的接收器。  

用户可以通过 **_WhizardTelemetry 通知_** 扩展组件的配置以及相关通知渠道的配置，使这个告警发送到一个特定的接收器。

</details>

