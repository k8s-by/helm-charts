# Raw

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square)

This chart is a port to Helm v3 of the original [raw chart](https://github.com/helm/charts/tree/master/incubator/raw). The chart works for the most parts the same (keep it as simple as possible). So all credits to the original authors. Don't forget to check the library functions, these can be used as well within your templates.
It is under active development and may contain bugs/unfinished documentation. Any testing/contributions are welcome! :)

**Homepage:** <https://github.com/k8s-by/helm-charts/blob/master/charts/raw>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Alex Egorov | alex202@egorov.net |  |

## Source Code

* <https://github.com/k8s-by/helm-charts/blob/master/charts/raw>

## Requirements

Kubernetes: `>=1.11.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| resources | list | `[]` | Define resources to be deployed by the raw chart  |
| templates | list | `[]` | Define templates which will be executed using the `tpl` function   |