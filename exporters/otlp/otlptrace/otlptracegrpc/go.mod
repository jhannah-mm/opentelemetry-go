module github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracegrpc

go 1.16

require (
	github.com/stretchr/testify v1.7.0
	github.com/jhannah-mm/opentelemetry-go v1.4.1
	github.com/jhannah-mm/opentelemetry-go/exporters/otlp/internal/retry v1.4.1
	github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace v1.4.1
	github.com/jhannah-mm/opentelemetry-go/sdk v1.4.1
	go.opentelemetry.io/proto/otlp v0.12.0
	go.uber.org/goleak v1.1.12
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013
	google.golang.org/grpc v1.44.0
	google.golang.org/protobuf v1.27.1
)

replace github.com/jhannah-mm/opentelemetry-go => ../../../..

replace github.com/jhannah-mm/opentelemetry-go/sdk => ../../../../sdk

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace => ../

replace github.com/jhannah-mm/opentelemetry-go/metric => ../../../../metric

replace github.com/jhannah-mm/opentelemetry-go/trace => ../../../../trace

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus => ../../../../bridge/opencensus

replace github.com/jhannah-mm/opentelemetry-go/bridge/opentracing => ../../../../bridge/opentracing

replace github.com/jhannah-mm/opentelemetry-go/example/jaeger => ../../../../example/jaeger

replace github.com/jhannah-mm/opentelemetry-go/example/namedtracer => ../../../../example/namedtracer

replace github.com/jhannah-mm/opentelemetry-go/example/opencensus => ../../../../example/opencensus

replace github.com/jhannah-mm/opentelemetry-go/example/otel-collector => ../../../../example/otel-collector

replace github.com/jhannah-mm/opentelemetry-go/example/prom-collector => ../../../../example/prom-collector

replace github.com/jhannah-mm/opentelemetry-go/example/prometheus => ../../../../example/prometheus

replace github.com/jhannah-mm/opentelemetry-go/example/zipkin => ../../../../example/zipkin

replace github.com/jhannah-mm/opentelemetry-go/exporters/prometheus => ../../../prometheus

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracegrpc => ./

replace github.com/jhannah-mm/opentelemetry-go/exporters/jaeger => ../../../jaeger

replace github.com/jhannah-mm/opentelemetry-go/exporters/zipkin => ../../../zipkin

replace github.com/jhannah-mm/opentelemetry-go/internal/tools => ../../../../internal/tools

replace github.com/jhannah-mm/opentelemetry-go/sdk/export/metric => ../../../../sdk/export/metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/metric => ../../../../sdk/metric

replace github.com/jhannah-mm/opentelemetry-go/example/passthrough => ../../../../example/passthrough

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracehttp => ../otlptracehttp

replace github.com/jhannah-mm/opentelemetry-go/internal/metric => ../../../../internal/metric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric => ../../otlpmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetricgrpc => ../../otlpmetric/otlpmetricgrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdoutmetric => ../../../stdout/stdoutmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdouttrace => ../../../stdout/stdouttrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetrichttp => ../../otlpmetric/otlpmetrichttp

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus/test => ../../../../bridge/opencensus/test

replace github.com/jhannah-mm/opentelemetry-go/example/fib => ../../../../example/fib

replace github.com/jhannah-mm/opentelemetry-go/schema => ../../../../schema

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/internal/retry => ../../internal/retry
