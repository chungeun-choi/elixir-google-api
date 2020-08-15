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

defmodule GoogleApi.ServiceControl.V2.Model.Auth do
  @moduledoc """
  This message defines request authentication attributes. Terminology is based on the JSON Web Token (JWT) standard, but the terms also correlate to concepts in other standards.

  ## Attributes

  *   `accessLevels` (*type:* `list(String.t)`, *default:* `nil`) - A list of access level resource names that allow resources to be accessed by authenticated requester. It is part of Secure GCP processing for the incoming request. An access level string has the format: "//{api_service_name}/accessPolicies/{policy_id}/accessLevels/{short_name}" Example: "//accesscontextmanager.googleapis.com/accessPolicies/MY_POLICY_ID/accessLevels/MY_LEVEL"
  *   `audiences` (*type:* `list(String.t)`, *default:* `nil`) - The intended audience(s) for this authentication information. Reflects the audience (`aud`) claim within a JWT. The audience value(s) depends on the `issuer`, but typically include one or more of the following pieces of information: * The services intended to receive the credential. For example, ["https://pubsub.googleapis.com/", "https://storage.googleapis.com/"]. * A set of service-based scopes. For example, ["https://www.googleapis.com/auth/cloud-platform"]. * The client id of an app, such as the Firebase project id for JWTs from Firebase Auth. Consult the documentation for the credential issuer to determine the information provided.
  *   `claims` (*type:* `map()`, *default:* `nil`) - Structured claims presented with the credential. JWTs include `{key: value}` pairs for standard and private claims. The following is a subset of the standard required and optional claims that would typically be presented for a Google-based JWT: {'iss': 'accounts.google.com', 'sub': '113289723416554971153', 'aud': ['123456789012', 'pubsub.googleapis.com'], 'azp': '123456789012.apps.googleusercontent.com', 'email': 'jsmith@example.com', 'iat': 1353601026, 'exp': 1353604926} SAML assertions are similarly specified, but with an identity provider dependent structure.
  *   `presenter` (*type:* `String.t`, *default:* `nil`) - The authorized presenter of the credential. Reflects the optional Authorized Presenter (`azp`) claim within a JWT or the OAuth client id. For example, a Google Cloud Platform client id looks as follows: "123456789012.apps.googleusercontent.com".
  *   `principal` (*type:* `String.t`, *default:* `nil`) - The authenticated principal. Reflects the issuer (`iss`) and subject (`sub`) claims within a JWT. The issuer and subject should be `/` delimited, with `/` percent-encoded within the subject fragment. For Google accounts, the principal format is: "https://accounts.google.com/{id}"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessLevels => list(String.t()),
          :audiences => list(String.t()),
          :claims => map(),
          :presenter => String.t(),
          :principal => String.t()
        }

  field(:accessLevels, type: :list)
  field(:audiences, type: :list)
  field(:claims, type: :map)
  field(:presenter)
  field(:principal)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V2.Model.Auth do
  def decode(value, options) do
    GoogleApi.ServiceControl.V2.Model.Auth.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V2.Model.Auth do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
