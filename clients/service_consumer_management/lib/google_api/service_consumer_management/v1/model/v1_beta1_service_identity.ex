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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ServiceIdentity do
  @moduledoc """
  A service identity in the Identity and Access Management API.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - The email address of the service identity.
  *   `name` (*type:* `String.t`, *default:* `nil`) - P4 service identity resource name. An example name would be: `services/serviceconsumermanagement.googleapis.com/projects/123/serviceIdentities/default`
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The P4 service identity configuration tag. This must be defined in activation_grants. If not specified when creating the account, the tag is set to "default".
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - The unique and stable id of the service identity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :name => String.t(),
          :tag => String.t(),
          :uniqueId => String.t()
        }

  field(:email)
  field(:name)
  field(:tag)
  field(:uniqueId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ServiceIdentity do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ServiceIdentity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ServiceIdentity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
