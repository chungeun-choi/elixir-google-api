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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus do
  @moduledoc """
  Resync status for each document per inconsistency type.

  ## Attributes

  *   `documentId` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3DocumentId.t`, *default:* `nil`) - The document identifier.
  *   `documentInconsistencyType` (*type:* `String.t`, *default:* `nil`) - The type of document inconsistency.
  *   `status` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - The status of resyncing the document with regards to the detected inconsistency. Empty if `validate_only` is true in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentId =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3DocumentId.t() | nil,
          :documentInconsistencyType => String.t() | nil,
          :status => GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus.t() | nil
        }

  field(:documentId, as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3DocumentId)
  field(:documentInconsistencyType)
  field(:status, as: GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
