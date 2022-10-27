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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildStep do
  @moduledoc """
  A step in the build pipeline. Next ID: 20

  ## Attributes

  *   `allowExitCodes` (*type:* `list(integer())`, *default:* `nil`) - Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.
  *   `allowFailure` (*type:* `boolean()`, *default:* `nil`) - Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.
  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
  *   `dir` (*type:* `String.t`, *default:* `nil`) - Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution.
  *   `entrypoint` (*type:* `String.t`, *default:* `nil`) - Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used.
  *   `env` (*type:* `list(String.t)`, *default:* `nil`) - A list of environment variable definitions to be used when running a step. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  *   `exitCode` (*type:* `integer()`, *default:* `nil`) - Output only. Return code from running the step.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for this build step, used in `wait_for` to reference this build step as a dependency.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like "ubuntu", "debian", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step.
  *   `pullTiming` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan.t`, *default:* `nil`) - Output only. Stores timing information for pulling this build step's builder image only.
  *   `script` (*type:* `String.t`, *default:* `nil`) - A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
  *   `secretEnv` (*type:* `list(String.t)`, *default:* `nil`) - A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
  *   `timing` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan.t`, *default:* `nil`) - Output only. Stores timing information for executing this build step.
  *   `volumes` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Volume.t)`, *default:* `nil`) - List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
  *   `waitFor` (*type:* `list(String.t)`, *default:* `nil`) - The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowExitCodes => list(integer()) | nil,
          :allowFailure => boolean() | nil,
          :args => list(String.t()) | nil,
          :dir => String.t() | nil,
          :entrypoint => String.t() | nil,
          :env => list(String.t()) | nil,
          :exitCode => integer() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :pullTiming => GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan.t() | nil,
          :script => String.t() | nil,
          :secretEnv => list(String.t()) | nil,
          :status => String.t() | nil,
          :timeout => String.t() | nil,
          :timing => GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan.t() | nil,
          :volumes => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Volume.t()) | nil,
          :waitFor => list(String.t()) | nil
        }

  field(:allowExitCodes, type: :list)
  field(:allowFailure)
  field(:args, type: :list)
  field(:dir)
  field(:entrypoint)
  field(:env, type: :list)
  field(:exitCode)
  field(:id)
  field(:name)
  field(:pullTiming, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan)
  field(:script)
  field(:secretEnv, type: :list)
  field(:status)
  field(:timeout)
  field(:timing, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.TimeSpan)
  field(:volumes, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Volume, type: :list)
  field(:waitFor, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildStep do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.BuildStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
