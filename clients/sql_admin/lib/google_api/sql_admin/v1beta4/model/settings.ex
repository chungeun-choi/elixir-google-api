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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  @moduledoc """
  Database instance settings.

  ## Attributes

  *   `activationPolicy` (*type:* `String.t`, *default:* `nil`) - The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values:
      ALWAYS: The instance is on, and remains so even in the absence of connection requests.
      NEVER: The instance is off; it is not activated, even if a connection request arrives.
      ON_DEMAND: First Generation instances only. The instance responds to incoming requests, and turns itself off when not in use. Instances with PER_USE pricing turn off after 15 minutes of inactivity. Instances with PER_PACKAGE pricing turn off after 12 hours of inactivity.
  *   `authorizedGaeApplications` (*type:* `list(String.t)`, *default:* `nil`) - The App Engine app IDs that can access this instance. First Generation instances only.
  *   `availabilityType` (*type:* `String.t`, *default:* `nil`) - Availability type (PostgreSQL instances only). Potential values:
      ZONAL: The instance serves data from only one zone. Outages in that zone affect data accessibility.
      REGIONAL: The instance can serve data from more than one zone in a region (it is highly available).
      For more information, see Overview of the High Availability Configuration.
  *   `backupConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.t`, *default:* `nil`) - The daily backup configuration for the instance.
  *   `crashSafeReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property is only applicable to First Generation instances.
  *   `dataDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - The size of data disk, in GB. The data disk size minimum is 10GB. Not used for First Generation instances.
  *   `dataDiskType` (*type:* `String.t`, *default:* `nil`) - The type of data disk: PD_SSD (default) or PD_HDD. Not used for First Generation instances.
  *   `databaseFlags` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags.t)`, *default:* `nil`) - The database flags passed to the instance at startup.
  *   `databaseReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether replication is enabled or not.
  *   `ipConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.t`, *default:* `nil`) - The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  *   `kind` (*type:* `String.t`, *default:* `sql#settings`) - This is always sql#settings.
  *   `locationPreference` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference.t`, *default:* `nil`) - The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location is only applicable to First Generation instances.
  *   `maintenanceWindow` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.t`, *default:* `nil`) - The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes. Not used for First Generation instances.
  *   `pricingPlan` (*type:* `String.t`, *default:* `nil`) - The pricing plan for this instance. This can be either PER_USE or PACKAGE. Only PER_USE is supported for Second Generation instances.
  *   `replicationType` (*type:* `String.t`, *default:* `nil`) - The type of replication this instance uses. This can be either ASYNCHRONOUS or SYNCHRONOUS. This property is only applicable to First Generation instances.
  *   `settingsVersion` (*type:* `String.t`, *default:* `nil`) - The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  *   `storageAutoResize` (*type:* `boolean()`, *default:* `nil`) - Configuration to increase storage size automatically. The default value is true. Not used for First Generation instances.
  *   `storageAutoResizeLimit` (*type:* `String.t`, *default:* `nil`) - The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. Not used for First Generation instances.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The tier (or machine type) for this instance, for example db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances). For MySQL instances, this property determines whether the instance is First or Second Generation. For more information, see Instance Settings.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-provided labels, represented as a dictionary where each label is a single key value pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationPolicy => String.t(),
          :authorizedGaeApplications => list(String.t()),
          :availabilityType => String.t(),
          :backupConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.t(),
          :crashSafeReplicationEnabled => boolean(),
          :dataDiskSizeGb => String.t(),
          :dataDiskType => String.t(),
          :databaseFlags => list(GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags.t()),
          :databaseReplicationEnabled => boolean(),
          :ipConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.t(),
          :kind => String.t(),
          :locationPreference => GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference.t(),
          :maintenanceWindow => GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.t(),
          :pricingPlan => String.t(),
          :replicationType => String.t(),
          :settingsVersion => String.t(),
          :storageAutoResize => boolean(),
          :storageAutoResizeLimit => String.t(),
          :tier => String.t(),
          :userLabels => map()
        }

  field(:activationPolicy)
  field(:authorizedGaeApplications, type: :list)
  field(:availabilityType)
  field(:backupConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration)
  field(:crashSafeReplicationEnabled)
  field(:dataDiskSizeGb)
  field(:dataDiskType)
  field(:databaseFlags, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags, type: :list)
  field(:databaseReplicationEnabled)
  field(:ipConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration)
  field(:kind)
  field(:locationPreference, as: GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference)
  field(:maintenanceWindow, as: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow)
  field(:pricingPlan)
  field(:replicationType)
  field(:settingsVersion)
  field(:storageAutoResize)
  field(:storageAutoResizeLimit)
  field(:tier)
  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
