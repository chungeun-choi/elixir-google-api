# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ServiceManagement.V1.Model.MetricDescriptorMetadata do
  @moduledoc """
  Additional annotations that can be used to guide the usage of a metric.

  ## Attributes

  *   `ingestDelay` (*type:* `String.t`, *default:* `nil`) - The delay of data points caused by ingestion. Data points older than this
      age are guaranteed to be ingested and available to be read, excluding
      data loss due to errors.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Deprecated. Please use the MetricDescriptor.launch_stage instead.
      The launch stage of the metric definition.
  *   `samplePeriod` (*type:* `String.t`, *default:* `nil`) - The sampling period of metric data points. For metrics which are written
      periodically, consecutive data points are stored at this time interval,
      excluding data loss due to errors. Metrics with a higher granularity have
      a smaller sampling period.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ingestDelay => String.t(),
          :launchStage => String.t(),
          :samplePeriod => String.t()
        }

  field(:ingestDelay)
  field(:launchStage)
  field(:samplePeriod)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MetricDescriptorMetadata do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.MetricDescriptorMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MetricDescriptorMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
