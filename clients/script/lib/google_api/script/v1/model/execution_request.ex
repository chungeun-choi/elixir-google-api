# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Script.V1.Model.ExecutionRequest do
  @moduledoc """
  A request to run the function in a script. The script is identified by the specified &#x60;script_id&#x60;. Executing a function on a script returns results based on the implementation of the script.

  ## Attributes

  - parameters ([String.t]): The parameters to be passed to the function being executed. The object type for each parameter should match the expected type in Apps Script. Parameters cannot be Apps Script-specific object types (such as a &#x60;Document&#x60; or a &#x60;Calendar&#x60;); they can only be primitive types such as &#x60;string&#x60;, &#x60;number&#x60;, &#x60;array&#x60;, &#x60;object&#x60;, or &#x60;boolean&#x60;. Optional. Defaults to: `null`.
  - devMode (boolean()): If &#x60;true&#x60; and the user is an owner of the script, the script runs at the most recently saved version rather than the version deployed for use with the Apps Script API. Optional; default is &#x60;false&#x60;. Defaults to: `null`.
  - function (String.t): The name of the function to execute in the given script. The name does not include parentheses or parameters. Defaults to: `null`.
  - sessionState (String.t): For Android add-ons only. An ID that represents the user&#39;s current session in the Android app for Google Docs or Sheets, included as extra data in the [Intent](https://developer.android.com/guide/components/intents-filters.html) that launches the add-on. When an Android add-on is run with a session state, it gains the privileges of a [bound](https://developers.google.com/apps-script/guides/bound) script&amp;mdash;that is, it can access information like the user&#39;s current cursor position (in Docs) or selected cell (in Sheets). To retrieve the state, call &#x60;Intent.getStringExtra(\&quot;com.google.android.apps.docs.addons.SessionState\&quot;)&#x60;. Optional. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => list(any()),
          :devMode => any(),
          :function => any(),
          :sessionState => any()
        }

  field(:parameters, type: :list)
  field(:devMode)
  field(:function)
  field(:sessionState)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.ExecutionRequest do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.ExecutionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.ExecutionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
