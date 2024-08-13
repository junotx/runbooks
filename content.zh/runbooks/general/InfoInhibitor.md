
# InfoInhibitor

## 含义

这个告警用来抑制提醒(`info`)级别的告警。 

提醒级别的告警有时候会特别嘈杂，但是当存在其他相关的告警时，它通常对问题的定位也会有辅助作用。  

<details>
<summary>更多信息</summary>

关于这个告警及其设计的更多信息请参考 [kube-prometheus issue](https://github.com/prometheus-operator/kube-prometheus/issues/861)。

</details>

## 影响

出现这个告警没有任何影响，它仅用作 alertmanager 中所缺少功能的解决方案。

## 诊断

在同一个 Namespace 内，该告警在有提醒(`info`)级别的告警触发时被触发，在有警告(`warning`)级别,重要(`error`),紧急(`critical`)级别的告警触发时不再被触发。

## 缓解

这个告警应该被路由到一个空接收器，并且配置抑制 `severity="info"` 的告警。  

> 它在 **_WhizardTelemetry 告警_** 组件中已默认配置。