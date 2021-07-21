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

defmodule GoogleApi.CloudBuild.V1.Model.Build do
  @moduledoc """
  A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.

  ## Attributes

  *   `artifacts` (*type:* `GoogleApi.CloudBuild.V1.Model.Artifacts.t`, *default:* `nil`) - Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
  *   `availableSecrets` (*type:* `GoogleApi.CloudBuild.V1.Model.Secrets.t`, *default:* `nil`) - Secrets and secret environment variables.
  *   `buildTriggerId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automatically.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to create the build was received.
  *   `failureInfo` (*type:* `GoogleApi.CloudBuild.V1.Model.FailureInfo.t`, *default:* `nil`) - Output only. Contains information about the build when status=FAILURE.
  *   `finishTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which execution of the build was finished. The difference between finish_time and start_time is the duration of the build's execution.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. Unique identifier of the build.
  *   `images` (*type:* `list(String.t)`, *default:* `nil`) - A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.
  *   `logUrl` (*type:* `String.t`, *default:* `nil`) - Output only. URL to logs for this build in Google Cloud Console.
  *   `logsBucket` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The 'Build' name with format: `projects/{project}/locations/{location}/builds/{build}`, where {build} is a unique identifier generated by the service.
  *   `options` (*type:* `GoogleApi.CloudBuild.V1.Model.BuildOptions.t`, *default:* `nil`) - Special options for this build.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the project.
  *   `queueTtl` (*type:* `String.t`, *default:* `nil`) - TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.
  *   `results` (*type:* `GoogleApi.CloudBuild.V1.Model.Results.t`, *default:* `nil`) - Output only. Results of the build.
  *   `secrets` (*type:* `list(GoogleApi.CloudBuild.V1.Model.Secret.t)`, *default:* `nil`) - Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account. 
  *   `source` (*type:* `GoogleApi.CloudBuild.V1.Model.Source.t`, *default:* `nil`) - The location of the source files to build.
  *   `sourceProvenance` (*type:* `GoogleApi.CloudBuild.V1.Model.SourceProvenance.t`, *default:* `nil`) - Output only. A permanent fixed identifier for source.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which execution of the build was started.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the build.
  *   `statusDetail` (*type:* `String.t`, *default:* `nil`) - Output only. Customer-readable message about the current status.
  *   `steps` (*type:* `list(GoogleApi.CloudBuild.V1.Model.BuildStep.t)`, *default:* `nil`) - Required. The operations to be performed on the workspace.
  *   `substitutions` (*type:* `map()`, *default:* `nil`) - Substitutions data for `Build` resource.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Tags for annotation of a `Build`. These are not docker tags.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is ten minutes.
  *   `timing` (*type:* `%{optional(String.t) => GoogleApi.CloudBuild.V1.Model.TimeSpan.t}`, *default:* `nil`) - Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps * PUSH: time to push all specified images. * FETCHSOURCE: time to fetch source. If the build does not specify source or images, these keys will not be included.
  *   `warnings` (*type:* `list(GoogleApi.CloudBuild.V1.Model.Warning.t)`, *default:* `nil`) - Output only. Non-fatal problems encountered during the execution of the build.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifacts => GoogleApi.CloudBuild.V1.Model.Artifacts.t() | nil,
          :availableSecrets => GoogleApi.CloudBuild.V1.Model.Secrets.t() | nil,
          :buildTriggerId => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :failureInfo => GoogleApi.CloudBuild.V1.Model.FailureInfo.t() | nil,
          :finishTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :images => list(String.t()) | nil,
          :logUrl => String.t() | nil,
          :logsBucket => String.t() | nil,
          :name => String.t() | nil,
          :options => GoogleApi.CloudBuild.V1.Model.BuildOptions.t() | nil,
          :projectId => String.t() | nil,
          :queueTtl => String.t() | nil,
          :results => GoogleApi.CloudBuild.V1.Model.Results.t() | nil,
          :secrets => list(GoogleApi.CloudBuild.V1.Model.Secret.t()) | nil,
          :serviceAccount => String.t() | nil,
          :source => GoogleApi.CloudBuild.V1.Model.Source.t() | nil,
          :sourceProvenance => GoogleApi.CloudBuild.V1.Model.SourceProvenance.t() | nil,
          :startTime => DateTime.t() | nil,
          :status => String.t() | nil,
          :statusDetail => String.t() | nil,
          :steps => list(GoogleApi.CloudBuild.V1.Model.BuildStep.t()) | nil,
          :substitutions => map() | nil,
          :tags => list(String.t()) | nil,
          :timeout => String.t() | nil,
          :timing => %{optional(String.t()) => GoogleApi.CloudBuild.V1.Model.TimeSpan.t()} | nil,
          :warnings => list(GoogleApi.CloudBuild.V1.Model.Warning.t()) | nil
        }

  field(:artifacts, as: GoogleApi.CloudBuild.V1.Model.Artifacts)
  field(:availableSecrets, as: GoogleApi.CloudBuild.V1.Model.Secrets)
  field(:buildTriggerId)
  field(:createTime, as: DateTime)
  field(:failureInfo, as: GoogleApi.CloudBuild.V1.Model.FailureInfo)
  field(:finishTime, as: DateTime)
  field(:id)
  field(:images, type: :list)
  field(:logUrl)
  field(:logsBucket)
  field(:name)
  field(:options, as: GoogleApi.CloudBuild.V1.Model.BuildOptions)
  field(:projectId)
  field(:queueTtl)
  field(:results, as: GoogleApi.CloudBuild.V1.Model.Results)
  field(:secrets, as: GoogleApi.CloudBuild.V1.Model.Secret, type: :list)
  field(:serviceAccount)
  field(:source, as: GoogleApi.CloudBuild.V1.Model.Source)
  field(:sourceProvenance, as: GoogleApi.CloudBuild.V1.Model.SourceProvenance)
  field(:startTime, as: DateTime)
  field(:status)
  field(:statusDetail)
  field(:steps, as: GoogleApi.CloudBuild.V1.Model.BuildStep, type: :list)
  field(:substitutions, type: :map)
  field(:tags, type: :list)
  field(:timeout)
  field(:timing, as: GoogleApi.CloudBuild.V1.Model.TimeSpan, type: :map)
  field(:warnings, as: GoogleApi.CloudBuild.V1.Model.Warning, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.Build do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.Build.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.Build do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
