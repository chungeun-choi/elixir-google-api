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

defmodule GoogleApi.PrivateCA.V1beta1.Model.BillingView do
  @moduledoc """
  Message for reporting billing requests through Eventstream.

  ## Attributes

  *   `reportRequests` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ReportRequest.t)`, *default:* `nil`) - Billing requests to be reported for cloud.eventstream.v2.ResourceEvent Each request contains billing operations to be reported under a service name. See go/billing-view-construction for documentation on constructing billing view report requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reportRequests =>
            list(GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ReportRequest.t())
            | nil
        }

  field(:reportRequests,
    as: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ReportRequest,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.BillingView do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.BillingView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.BillingView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
