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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy do
  @moduledoc """
  Describes policy settings that need to be applied to a newly created tenant project.

  ## Attributes

  *   `policyBindings` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding.t)`, *default:* `nil`) - Policy bindings to be applied to the tenant project, in addition to the 'roles/owner' role granted to the Service Consumer Management service account. At least one binding must have the role `roles/owner`. Among the list of members for `roles/owner`, at least one of them must be either the `user` or `group` type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policyBindings => list(GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding.t())
        }

  field(:policyBindings,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
