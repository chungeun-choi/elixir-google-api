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

defmodule GoogleApi.PrivateCA.V1beta1.Model.KeyUsageOptions do
  @moduledoc """
  KeyUsage.KeyUsageOptions corresponds to the key usage values described in https://tools.ietf.org/html/rfc5280#section-4.2.1.3.

  ## Attributes

  *   `certSign` (*type:* `boolean()`, *default:* `nil`) - The key may be used to sign certificates.
  *   `contentCommitment` (*type:* `boolean()`, *default:* `nil`) - The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  *   `crlSign` (*type:* `boolean()`, *default:* `nil`) - The key may be used sign certificate revocation lists.
  *   `dataEncipherment` (*type:* `boolean()`, *default:* `nil`) - The key may be used to encipher data.
  *   `decipherOnly` (*type:* `boolean()`, *default:* `nil`) - The key may be used to decipher only.
  *   `digitalSignature` (*type:* `boolean()`, *default:* `nil`) - The key may be used for digital signatures.
  *   `encipherOnly` (*type:* `boolean()`, *default:* `nil`) - The key may be used to encipher only.
  *   `keyAgreement` (*type:* `boolean()`, *default:* `nil`) - The key may be used in a key agreement protocol.
  *   `keyEncipherment` (*type:* `boolean()`, *default:* `nil`) - The key may be used to encipher other keys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certSign => boolean() | nil,
          :contentCommitment => boolean() | nil,
          :crlSign => boolean() | nil,
          :dataEncipherment => boolean() | nil,
          :decipherOnly => boolean() | nil,
          :digitalSignature => boolean() | nil,
          :encipherOnly => boolean() | nil,
          :keyAgreement => boolean() | nil,
          :keyEncipherment => boolean() | nil
        }

  field(:certSign)
  field(:contentCommitment)
  field(:crlSign)
  field(:dataEncipherment)
  field(:decipherOnly)
  field(:digitalSignature)
  field(:encipherOnly)
  field(:keyAgreement)
  field(:keyEncipherment)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.KeyUsageOptions do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.KeyUsageOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.KeyUsageOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
