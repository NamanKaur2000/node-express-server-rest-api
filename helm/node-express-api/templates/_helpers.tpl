{{- define "node-express-api.name" -}}
node-express-api
{{- end -}}

{{- define "node-express-api.fullname" -}}
{{- printf "%s-%s" (include "node-express-api.name" .) .Release.Name | trunc 63 -}}
{{- end -}}
