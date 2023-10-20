{{/*
Expand the name of the chart.
*/}}
{{- define "alertsnitch.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "alertsnitch.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "alertsnitch.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "alertsnitch.labels" -}}
helm.sh/chart: {{ include "alertsnitch.chart" . }}
{{ include "alertsnitch.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "alertsnitch.selectorLabels" -}}
app.kubernetes.io/name: {{ include "alertsnitch.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "alertsnitch.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "alertsnitch.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "database.host" -}}
{{- printf "%s-postgresql.%s.svc.%s" .Release.Name .Release.Namespace .Values.clusterDomain -}}
{{- end -}}


{{- define "database.dsn" -}}
{{- if .Values.database.dsn -}}
{{ .Values.database.dsn }}
{{- else if (index .Values "postgresql").enabled -}}
{{- printf "sslmode=disable user=%s password=%s host=%s port=5432 database=%s" .Values.postgresql.global.postgresql.auth.username .Values.postgresql.global.postgresql.auth.password ( include "database.host" . )  .Values.postgresql.global.postgresql.auth.database  -}}
{{- else -}}
{{- fail "Either database.dsn should be specified or postgresql should be enabled" -}}
{{- end -}}
{{- end -}}



