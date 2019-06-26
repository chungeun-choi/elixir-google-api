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

defmodule GoogleApi.CloudBuild.V1.Model.BuildTrigger do
  @moduledoc """
  Configuration for an automated build in response to source repository
  changes.

  ## Attributes

  *   `build` (*type:* `GoogleApi.CloudBuild.V1.Model.Build.t`, *default:* `nil`) - Contents of the build template.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the trigger was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human-readable description of this trigger.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - If true, the trigger will never result in a build.
  *   `filename` (*type:* `String.t`, *default:* `nil`) - Path, from the source root, to a file whose contents is used for the
      template.
  *   `github` (*type:* `GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig.t`, *default:* `nil`) - GitHubEventsConfig describes the configuration of a trigger that creates
      a build whenever a GitHub event is received.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. Unique identifier of the trigger.
  *   `ignoredFiles` (*type:* `list(String.t)`, *default:* `nil`) - ignored_files and included_files are file glob matches using
      http://godoc/pkg/path/filepath#Match extended with support for "**".

      If ignored_files and changed files are both empty, then they are
      not used to determine whether or not to trigger a build.

      If ignored_files is not empty, then we ignore any files that match
      any of the ignored_file globs. If the change has no files that are
      outside of the ignored_files globs, then we do not trigger a build.
  *   `includedFiles` (*type:* `list(String.t)`, *default:* `nil`) - If any of the files altered in the commit pass the ignored_files
      filter and included_files is empty, then as far as this filter is
      concerned, we should trigger the build.

      If any of the files altered in the commit pass the ignored_files
      filter and included_files is not empty, then we make sure that at
      least one of those files matches a included_files glob. If not,
      then we do not trigger a build.
  *   `substitutions` (*type:* `map()`, *default:* `nil`) - Substitutions data for Build resource.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Tags for annotation of a `BuildTrigger`
  *   `triggerTemplate` (*type:* `GoogleApi.CloudBuild.V1.Model.RepoSource.t`, *default:* `nil`) - Template describing the types of source changes to trigger a build.

      Branch and tag names in trigger templates are interpreted as regular
      expressions. Any branch or tag change that matches that regular expression
      will trigger a build.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :build => GoogleApi.CloudBuild.V1.Model.Build.t(),
          :createTime => DateTime.t(),
          :description => String.t(),
          :disabled => boolean(),
          :filename => String.t(),
          :github => GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig.t(),
          :id => String.t(),
          :ignoredFiles => list(String.t()),
          :includedFiles => list(String.t()),
          :substitutions => map(),
          :tags => list(String.t()),
          :triggerTemplate => GoogleApi.CloudBuild.V1.Model.RepoSource.t()
        }

  field(:build, as: GoogleApi.CloudBuild.V1.Model.Build)
  field(:createTime, as: DateTime)
  field(:description)
  field(:disabled)
  field(:filename)
  field(:github, as: GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig)
  field(:id)
  field(:ignoredFiles, type: :list)
  field(:includedFiles, type: :list)
  field(:substitutions, type: :map)
  field(:tags, type: :list)
  field(:triggerTemplate, as: GoogleApi.CloudBuild.V1.Model.RepoSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.BuildTrigger do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.BuildTrigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.BuildTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
