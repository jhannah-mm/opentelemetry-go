module github.com/jhannah-mm/opentelemetry-go/example/fib

go 1.16

require (
	github.com/jhannah-mm/opentelemetry-go v1.4.1
	github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdouttrace v1.4.1
	github.com/jhannah-mm/opentelemetry-go/sdk v1.4.1
	github.com/jhannah-mm/opentelemetry-go/trace v1.4.1
)

replace github.com/jhannah-mm/opentelemetry-go => ../..

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus => ../../bridge/opencensus

replace github.com/jhannah-mm/opentelemetry-go/bridge/opencensus/test => ../../bridge/opencensus/test

replace github.com/jhannah-mm/opentelemetry-go/bridge/opentracing => ../../bridge/opentracing

replace github.com/jhannah-mm/opentelemetry-go/example/jaeger => ../jaeger

replace github.com/jhannah-mm/opentelemetry-go/example/namedtracer => ../namedtracer

replace github.com/jhannah-mm/opentelemetry-go/example/opencensus => ../opencensus

replace github.com/jhannah-mm/opentelemetry-go/example/otel-collector => ../otel-collector

replace github.com/jhannah-mm/opentelemetry-go/example/passthrough => ../passthrough

replace github.com/jhannah-mm/opentelemetry-go/example/prometheus => ../prometheus

replace github.com/jhannah-mm/opentelemetry-go/example/zipkin => ../zipkin

replace github.com/jhannah-mm/opentelemetry-go/exporters/jaeger => ../../exporters/jaeger

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric => ../../exporters/otlp/otlpmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetricgrpc => ../../exporters/otlp/otlpmetric/otlpmetricgrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlpmetric/otlpmetrichttp => ../../exporters/otlp/otlpmetric/otlpmetrichttp

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace => ../../exporters/otlp/otlptrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracegrpc => ../../exporters/otlp/otlptrace/otlptracegrpc

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/otlptrace/otlptracehttp => ../../exporters/otlp/otlptrace/otlptracehttp

replace github.com/jhannah-mm/opentelemetry-go/exporters/prometheus => ../../exporters/prometheus

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdoutmetric => ../../exporters/stdout/stdoutmetric

replace github.com/jhannah-mm/opentelemetry-go/exporters/stdout/stdouttrace => ../../exporters/stdout/stdouttrace

replace github.com/jhannah-mm/opentelemetry-go/exporters/zipkin => ../../exporters/zipkin

replace github.com/jhannah-mm/opentelemetry-go/internal/metric => ../../internal/metric

replace github.com/jhannah-mm/opentelemetry-go/internal/tools => ../../internal/tools

replace github.com/jhannah-mm/opentelemetry-go/metric => ../../metric

replace github.com/jhannah-mm/opentelemetry-go/sdk => ../../sdk

replace github.com/jhannah-mm/opentelemetry-go/sdk/export/metric => ../../sdk/export/metric

replace github.com/jhannah-mm/opentelemetry-go/sdk/metric => ../../sdk/metric

replace github.com/jhannah-mm/opentelemetry-go/trace => ../../trace

replace github.com/jhannah-mm/opentelemetry-go/example/fib => ./

replace github.com/jhannah-mm/opentelemetry-go/schema => ../../schema

replace github.com/jhannah-mm/opentelemetry-go/exporters/otlp/internal/retry => ../../exporters/otlp/internal/retry
