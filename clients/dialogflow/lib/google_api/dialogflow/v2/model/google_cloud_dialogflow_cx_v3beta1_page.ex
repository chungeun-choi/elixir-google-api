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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Page do
  @moduledoc """
  A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the page, unique within the agent.
  *   `entryFulfillment` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Fulfillment.t`, *default:* `nil`) - The fulfillment to call when the session is entering the page.
  *   `eventHandlers` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1EventHandler.t)`, *default:* `nil`) - Handlers associated with the page to handle events such as webhook errors, no match or no input.
  *   `form` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Form.t`, *default:* `nil`) - The form associated with the page, used for collecting parameters relevant to the page.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  *   `transitionRouteGroups` (*type:* `list(String.t)`, *default:* `nil`) - Ordered list of `TransitionRouteGroups` associated with the page. Transition route groups must be unique within a page. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/`.
  *   `transitionRoutes` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TransitionRoute.t)`, *default:* `nil`) - A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :entryFulfillment =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Fulfillment.t(),
          :eventHandlers =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1EventHandler.t()),
          :form => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Form.t(),
          :name => String.t(),
          :transitionRouteGroups => list(String.t()),
          :transitionRoutes =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TransitionRoute.t())
        }

  field(:displayName)

  field(:entryFulfillment,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Fulfillment
  )

  field(:eventHandlers,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1EventHandler,
    type: :list
  )

  field(:form, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Form)
  field(:name)
  field(:transitionRouteGroups, type: :list)

  field(:transitionRoutes,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1TransitionRoute,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Page do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Page.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1Page do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
