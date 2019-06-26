# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudBuild.V1.Model.Source do
  @moduledoc """
  Location of the source in a supported storage service.

  ## Attributes

  *   `repoSource` (*type:* `GoogleApi.CloudBuild.V1.Model.RepoSource.t`, *default:* `nil`) - If provided, get the source from this location in a Cloud Source
      Repository.
  *   `storageSource` (*type:* `GoogleApi.CloudBuild.V1.Model.StorageSource.t`, *default:* `nil`) - If provided, get the source from this location in Google Cloud Storage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :repoSource => GoogleApi.CloudBuild.V1.Model.RepoSource.t(),
          :storageSource => GoogleApi.CloudBuild.V1.Model.StorageSource.t()
        }

  field(:repoSource, as: GoogleApi.CloudBuild.V1.Model.RepoSource)
  field(:storageSource, as: GoogleApi.CloudBuild.V1.Model.StorageSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.Source do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
