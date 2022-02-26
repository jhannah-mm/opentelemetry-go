module github.com/jhannah-mm/opentelemetry-go/bridge/opencensus

go 1.16

require (
	go.opencensus.io v0.22.6-0.20201102222123-380f4078db9f
	github.com/jhannah-mm/opentelemetry-go v1.4.1
	github.com/jhannah-mm/opentelemetry-go/metric v0.27.0
	github.com/jhannah-mm/opentelemetry-go/sdk v1.4.1
	github.com/jhannah-mm/opentelemetry-go/sdk/metric v0.27.0
	github.com/jhannah-mm/opentelemetry-go/trace v1.4.1
)

replace github.com/jhannah-mm/opentelemetry-go => ../..

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus => ./

replace github.com/jhannah-mm/opentelemetry-go/bridge/opentracing => ../opentracing

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

replace github.com/jhannah-mm/opentelemetry-go/internal/tools => ../../internal/tools

replace github.com/jhannah-mm/opentelemetry-go/sdk => ../../sdk

replace github.com/jhannah-mm/opentelemetry-go/metric => ../../metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/export/metric => ../../sdk/export/metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/metric => ../../sdk/metric

replace github.com/jhannah-mm/opentelemetry-go/trace => ../../trace

replace github.com/jhannah-mm/opentelemetry-go/example/passthrough => ../../example/passthrough

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace => ../../exporters/otlp/otlptrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracegrpc => ../../exporters/otlp/otlptrace/otlptracegrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracehttp => ../../exporters/otlp/otlptrace/otlptracehttp

replace github.com/jhannah-mm/opentelemetry-go/internal/metric => ../../internal/metric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric => ../../exporters/otlp/otlpmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetricgrpc => ../../exporters/otlp/otlpmetric/otlpmetricgrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdoutmetric => ../../exporters/stdout/stdoutmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdouttrace => ../../exporters/stdout/stdouttrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetrichttp => ../../exporters/otlp/otlpmetric/otlpmetrichttp

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus/test => ./test

replace github.com/jhannah-mm/opentelemetry-go/example/fib => ../../example/fib

replace github.com/jhannah-mm/opentelemetry-go/schema => ../../schema

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/internal/retry => ../../exporters/otlp/internal/retry
