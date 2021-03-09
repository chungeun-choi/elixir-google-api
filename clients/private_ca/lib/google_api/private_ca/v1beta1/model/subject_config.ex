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

defmodule GoogleApi.PrivateCA.V1beta1.Model.SubjectConfig do
  @moduledoc """
  These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.

  ## Attributes

  *   `commonName` (*type:* `String.t`, *default:* `nil`) - Optional. The "common name" of the distinguished name.
  *   `subject` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.Subject.t`, *default:* `nil`) - Required. Contains distinguished name fields such as the location and organization.
  *   `subjectAltName` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames.t`, *default:* `nil`) - Optional. The subject alternative name fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonName => String.t() | nil,
          :subject => GoogleApi.PrivateCA.V1beta1.Model.Subject.t() | nil,
          :subjectAltName => GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames.t() | nil
        }

  field(:commonName)
  field(:subject, as: GoogleApi.PrivateCA.V1beta1.Model.Subject)
  field(:subjectAltName, as: GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectConfig do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.SubjectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
