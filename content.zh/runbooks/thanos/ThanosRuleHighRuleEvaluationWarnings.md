
# ThanosRuleHighRuleEvaluationWarnings

## 含义

Thanos Rule 组件有较多的规则评估 warning。  

<details>
<summary>更多信息</summary>

该规则基于指标 [`thanos_rule_evaluation_with_warnings_total`](https://thanos.io/tip/components/rule.md/#must-have-essential-ruler-alerts)。

Thanos Query 通常是针对多个 StoreAPIs 执行查询，支持设置额外的[部分响应策略参数](https://thanos.io/tip/components/query.md/#partial-response-strategy)来控制查询时的行为，即当某个或某些 StoreAPI 出现异常或超时情况时如何响应整个查询结果。

</details>

## 影响



## 诊断
