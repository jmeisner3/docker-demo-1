{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{define "name"}}{{default "docker-demo-1" .Values.nameOverride | trunc 63 | trimSuffix "-" }}{{end}}
{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this
(by the DNS naming spec).
*/}}
{{define "fullname"}}
{{- $name := default "docker-demo-1" .Values.nameOverride -}}
{{printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{end}}

{{define "image_tag"}}{{default "latest" .Values.tag}}{{end}}