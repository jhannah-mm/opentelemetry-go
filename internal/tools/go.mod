module github.com/jhannah-mm/opentelemetry-go/internal/tools

go 1.16

require (
	github.com/client9/misspell v0.3.4
	github.com/gogo/protobuf v1.3.2
	github.com/golangci/golangci-lint v1.44.2
	github.com/itchyny/gojq v0.12.6
	github.com/jcchavezs/porto v0.4.0
	github.com/wadey/gocovmerge v0.0.0-20160331181800-b5bfa59ec0ad
	go.opentelemetry.io/build-tools/multimod v0.0.0-20210920164323-2ceabab23375
	go.opentelemetry.io/build-tools/semconvgen v0.0.0-20210920164323-2ceabab23375
	golang.org/x/mod v0.5.1
	golang.org/x/tools v0.1.9
)

replace github.com/jhannah-mm/opentelemetry-go => ../..

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus => ../../bridge/opencensus

replace github.com/jhannah-mm/opentelemetry-go/bridge/opentracing => ../../bridge/opentracing

replace github.com/jhannah-mm/opentelemetry-go/example/jaeger => ../../example/jaeger

replace github.com/jhannah-mm/opentelemetry-go/example/namedtracer => ../../example/namedtracer

replace github.com/jhannah-mm/opentelemetry-go/example/opencensus => ../../example/opencensus

replace github.com/jhannah-mm/opentelemetry-go/example/otel-collector => ../../example/otel-collector

replace github.com/jhannah-mm/opentelemetry-go/example/prom-collector => ../../example/prom-collector

replace github.com/jhannah-mm/opentelemetry-go/example/prometheus => ../../example/prometheus

replace github.com/jhannah-mm/opentelemetry-go/example/zipkin => ../../example/zipkin

replace github.com/jhannah-mm/opentelemetry-go/exporters/prometheus => ../../exporters/prometheus

replace github.com/jhannah-mm/opentelemetry-go/exporters/jaeger => ../../exporters/jaeger

replace github.com/jhannah-mm/opentelemetry-go/exporters/zipkin => ../../exporters/zipkin

replace github.com/jhannah-mm/opentelemetry-go/internal/tools => ./

replace github.com/jhannah-mm/opentelemetry-go/sdk => ../../sdk

replace github.com/jhannah-mm/opentelemetry-go/metric => ../../metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/export/metric => ../../sdk/export/metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/metric => ../../sdk/metric

replace github.com/jhannah-mm/opentelemetry-go/trace => ../../trace

replace github.com/jhannah-mm/opentelemetry-go/example/passthrough => ../../example/passthrough

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace => ../../exporters/otlp/otlptrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracegrpc => ../../exporters/otlp/otlptrace/otlptracegrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracehttp => ../../exporters/otlp/otlptrace/otlptracehttp

replace github.com/jhannah-mm/opentelemetry-go/internal/metric => ../metric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric => ../../exporters/otlp/otlpmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetricgrpc => ../../exporters/otlp/otlpmetric/otlpmetricgrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdoutmetric => ../../exporters/stdout/stdoutmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdouttrace => ../../exporters/stdout/stdouttrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetrichttp => ../../exporters/otlp/otlpmetric/otlpmetrichttp

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus/test => ../../bridge/opencensus/test

replace github.com/jhannah-mm/opentelemetry-go/example/fib => ../../example/fib

replace github.com/jhannah-mm/opentelemetry-go/schema => ../../schema

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/internal/retry => ../../exporters/otlp/internal/retry
