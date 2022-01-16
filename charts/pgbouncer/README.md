# Pgbouncer

![Version: 1.15.0](https://img.shields.io/badge/Version-1.15.0-informational?style=flat-square)

A Helm chart installing pgbouncer in kubernetes

Pgbouncer helm chart

**Homepage:** <https://github.com/k8s-by/helm-charts/blob/master/charts/pgbouncer>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Alex Egorov | alex202@egorov.net |  |

## Source Code

* <https://github.com/k8s-by/helm-charts/blob/master/charts/pgbouncer>

## Requirements

Kubernetes: `>=1.19.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.adminPassword | string | `nil` |  |
| config.adminUser | string | `"admin"` |  |
| config.authPassword | string | `nil` |  |
| config.authUser | string | `nil` |  |
| config.databases | object | `{}` |  |
| config.pgbouncer | object | `{}` |  |
| config.userlist | object | `{}` |  |
| extraContainers | list | `[]` |  |
| extraEnvs | list | `[]` | Additional environment variables to set |
| extraInitContainers | list | `[]` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| image | object | `{"pullPolicy":"IfNotPresent","registry":"","repository":"pgbouncer/pgbouncer","tag":"1.15.0"}` | Container image to run |
| imagePullSecrets | list | `[]` | Optional array of imagePullSecrets containing private registry credentials |
| lifecycle | object | `{}` |  |
| minReadySeconds | int | `0` | Interval between discrete pods transitions |
| nodeSelector | object | `{}` |  |
| pgbouncerExporter.enabled | bool | `false` |  |
| pgbouncerExporter.image.pullPolicy | string | `"IfNotPresent"` |  |
| pgbouncerExporter.image.registry | string | `""` |  |
| pgbouncerExporter.image.repository | string | `"prometheuscommunity/pgbouncer-exporter"` |  |
| pgbouncerExporter.image.tag | string | `"v0.4.0"` |  |
| pgbouncerExporter.log.format | string | `"logfmt"` |  |
| pgbouncerExporter.log.level | string | `"info"` |  |
| pgbouncerExporter.port | int | `9127` |  |
| pgbouncerExporter.resources.limits.cpu | string | `"250m"` |  |
| pgbouncerExporter.resources.limits.memory | string | `"150Mi"` |  |
| pgbouncerExporter.resources.requests.cpu | string | `"30m"` |  |
| pgbouncerExporter.resources.requests.memory | string | `"40Mi"` |  |
| podAnnotations | object | `{}` |  |
| podDisruptionBudget.enabled | bool | `true` |  |
| podDisruptionBudget.maxUnavailable | int | `1` |  |
| podLabels | object | `{}` |  |
| podSecurityPolicy.allowPrivilegeEscalation | bool | `false` |  |
| podSecurityPolicy.allowedCapabilities | list | `[]` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| podSecurityPolicy.fsGroup.ranges[0].max | int | `65535` |  |
| podSecurityPolicy.fsGroup.ranges[0].min | int | `1000` |  |
| podSecurityPolicy.fsGroup.rule | string | `"MustRunAs"` |  |
| podSecurityPolicy.hostIPC | bool | `false` |  |
| podSecurityPolicy.hostNetwork | bool | `false` |  |
| podSecurityPolicy.hostPID | bool | `false` |  |
| podSecurityPolicy.privileged | bool | `false` |  |
| podSecurityPolicy.runAsUser.rule | string | `"MustRunAsNonRoot"` |  |
| podSecurityPolicy.seLinux.rule | string | `"RunAsAny"` |  |
| podSecurityPolicy.supplementalGroups.ranges[0].max | int | `65535` |  |
| podSecurityPolicy.supplementalGroups.ranges[0].min | int | `1000` |  |
| podSecurityPolicy.supplementalGroups.rule | string | `"MustRunAs"` |  |
| podSecurityPolicy.volumes[0] | string | `"configMap"` |  |
| podSecurityPolicy.volumes[1] | string | `"emptyDir"` |  |
| podSecurityPolicy.volumes[2] | string | `"downwardAPI"` |  |
| podSecurityPolicy.volumes[3] | string | `"secret"` |  |
| priorityClassName | string | `""` |  |
| replicaCount | int | `1` | Replica count for Deployment |
| resources | object | `{}` | Pod resources for scheduling/limiting |
| revisionHistoryLimit | int | `10` | Rollback limit |
| runtimeClassName | string | `""` |  |
| service.port | int | `5432` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| updateStrategy | object | `{}` | The update strategy to apply to the Deployment |