// Copyright The OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package aggregator_test // import "github.com/jhannah-mm/opentelemetry-go/sdk/metric/aggregator"

import (
	"errors"
	"math"
	"testing"

	"github.com/stretchr/testify/require"

	"github.com/jhannah-mm/opentelemetry-go/metric/metrictest"
	"github.com/jhannah-mm/opentelemetry-go/metric/number"
	"github.com/jhannah-mm/opentelemetry-go/metric/sdkapi"
	"github.com/jhannah-mm/opentelemetry-go/sdk/metric/aggregator"
	"github.com/jhannah-mm/opentelemetry-go/sdk/metric/aggregator/lastvalue"
	"github.com/jhannah-mm/opentelemetry-go/sdk/metric/aggregator/sum"
	"github.com/jhannah-mm/opentelemetry-go/sdk/metric/export/aggregation"
)

func TestInconsistentAggregatorErr(t *testing.T) {
	err := aggregator.NewInconsistentAggregatorError(&sum.New(1)[0], &lastvalue.New(1)[0])
	require.Equal(
		t,
		"inconsistent aggregator types: *sum.Aggregator and *lastvalue.Aggregator",
		err.Error(),
	)
	require.True(t, errors.Is(err, aggregation.ErrInconsistentType))
}

func testRangeNaN(t *testing.T, desc *sdkapi.Descriptor) {
	// If the descriptor uses int64 numbers, this won't register as NaN
	nan := number.NewFloat64Number(math.NaN())
	err := aggregator.RangeTest(nan, desc)

	if desc.NumberKind() == number.Float64Kind {
		require.Equal(t, aggregation.ErrNaNInput, err)
	} else {
		require.Nil(t, err)
	}
}

func testRangeNegative(t *testing.T, desc *sdkapi.Descriptor) {
	var neg, pos number.Number

	if desc.NumberKind() == number.Float64Kind {
		pos = number.NewFloat64Number(+1)
		neg = number.NewFloat64Number(-1)
	} else {
		pos = number.NewInt64Number(+1)
		neg = number.NewInt64Number(-1)
	}

	posErr := aggregator.RangeTest(pos, desc)
	negErr := aggregator.RangeTest(neg, desc)

	require.Nil(t, posErr)
	require.Equal(t, negErr, aggregation.ErrNegativeInput)
}

func TestRangeTest(t *testing.T) {
	// Only Counters implement a range test.
	for _, nkind := range []number.Kind{number.Float64Kind, number.Int64Kind} {
		t.Run(nkind.String(), func(t *testing.T) {
			desc := metrictest.NewDescriptor(
				"name",
				sdkapi.CounterInstrumentKind,
				nkind,
			)
			testRangeNegative(t, &desc)
		})
	}
}

func TestNaNTest(t *testing.T) {
	for _, nkind := range []number.Kind{number.Float64Kind, number.Int64Kind} {
		t.Run(nkind.String(), func(t *testing.T) {
			for _, mkind := range []sdkapi.InstrumentKind{
				sdkapi.CounterInstrumentKind,
				sdkapi.HistogramInstrumentKind,
				sdkapi.GaugeObserverInstrumentKind,
			} {
				desc := metrictest.NewDescriptor(
					"name",
					mkind,
					nkind,
				)
				testRangeNaN(t, &desc)
			}
		})
	}
}
