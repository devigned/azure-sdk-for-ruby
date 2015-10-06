# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

require 'azure_mgmt_compute/module_definition'
require 'azure_mgmt_compute/version'

# {include:file:../README.md}
module Azure::ARM::Compute
  autoload :AvailabilitySets,                                   'azure_mgmt_compute/availability_sets.rb'
  autoload :VirtualMachineImages,                               'azure_mgmt_compute/virtual_machine_images.rb'
  autoload :VirtualMachineExtensionImages,                      'azure_mgmt_compute/virtual_machine_extension_images.rb'
  autoload :VirtualMachineExtensions,                           'azure_mgmt_compute/virtual_machine_extensions.rb'
  autoload :UsageOperations,                                    'azure_mgmt_compute/usage_operations.rb'
  autoload :VirtualMachineSizes,                                'azure_mgmt_compute/virtual_machine_sizes.rb'
  autoload :VirtualMachines,                                    'azure_mgmt_compute/virtual_machines.rb'
  autoload :ComputeManagementClient,                            'azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :InstanceViewStatus,                                 'azure_mgmt_compute/models/instance_view_status.rb'
    autoload :AvailabilitySetProperties,                          'azure_mgmt_compute/models/availability_set_properties.rb'
    autoload :AvailabilitySetListResult,                          'azure_mgmt_compute/models/availability_set_list_result.rb'
    autoload :VirtualMachineSize,                                 'azure_mgmt_compute/models/virtual_machine_size.rb'
    autoload :VirtualMachineSizeListResult,                       'azure_mgmt_compute/models/virtual_machine_size_list_result.rb'
    autoload :PurchasePlan,                                       'azure_mgmt_compute/models/purchase_plan.rb'
    autoload :OSDiskImage,                                        'azure_mgmt_compute/models/osdisk_image.rb'
    autoload :DataDiskImage,                                      'azure_mgmt_compute/models/data_disk_image.rb'
    autoload :VirtualMachineImageProperties,                      'azure_mgmt_compute/models/virtual_machine_image_properties.rb'
    autoload :VirtualMachineExtensionImageProperties,             'azure_mgmt_compute/models/virtual_machine_extension_image_properties.rb'
    autoload :VirtualMachineExtensionInstanceView,                'azure_mgmt_compute/models/virtual_machine_extension_instance_view.rb'
    autoload :VirtualMachineExtensionProperties,                  'azure_mgmt_compute/models/virtual_machine_extension_properties.rb'
    autoload :UsageName,                                          'azure_mgmt_compute/models/usage_name.rb'
    autoload :Usage,                                              'azure_mgmt_compute/models/usage.rb'
    autoload :ListUsagesResult,                                   'azure_mgmt_compute/models/list_usages_result.rb'
    autoload :VirtualMachineCaptureParameters,                    'azure_mgmt_compute/models/virtual_machine_capture_parameters.rb'
    autoload :ComputeLongRunningOperationProperties,              'azure_mgmt_compute/models/compute_long_running_operation_properties.rb'
    autoload :ApiErrorBase,                                       'azure_mgmt_compute/models/api_error_base.rb'
    autoload :InnerError,                                         'azure_mgmt_compute/models/inner_error.rb'
    autoload :ApiError,                                           'azure_mgmt_compute/models/api_error.rb'
    autoload :ComputeLongRunningOperationResult,                  'azure_mgmt_compute/models/compute_long_running_operation_result.rb'
    autoload :Plan,                                               'azure_mgmt_compute/models/plan.rb'
    autoload :HardwareProfile,                                    'azure_mgmt_compute/models/hardware_profile.rb'
    autoload :ImageReference,                                     'azure_mgmt_compute/models/image_reference.rb'
    autoload :VirtualHardDisk,                                    'azure_mgmt_compute/models/virtual_hard_disk.rb'
    autoload :OSDisk,                                             'azure_mgmt_compute/models/osdisk.rb'
    autoload :DataDisk,                                           'azure_mgmt_compute/models/data_disk.rb'
    autoload :StorageProfile,                                     'azure_mgmt_compute/models/storage_profile.rb'
    autoload :AdditionalUnattendContent,                          'azure_mgmt_compute/models/additional_unattend_content.rb'
    autoload :WinRMListener,                                      'azure_mgmt_compute/models/win_rmlistener.rb'
    autoload :WinRMConfiguration,                                 'azure_mgmt_compute/models/win_rmconfiguration.rb'
    autoload :WindowsConfiguration,                               'azure_mgmt_compute/models/windows_configuration.rb'
    autoload :SshPublicKey,                                       'azure_mgmt_compute/models/ssh_public_key.rb'
    autoload :SshConfiguration,                                   'azure_mgmt_compute/models/ssh_configuration.rb'
    autoload :LinuxConfiguration,                                 'azure_mgmt_compute/models/linux_configuration.rb'
    autoload :VaultCertificate,                                   'azure_mgmt_compute/models/vault_certificate.rb'
    autoload :VaultSecretGroup,                                   'azure_mgmt_compute/models/vault_secret_group.rb'
    autoload :OSProfile,                                          'azure_mgmt_compute/models/osprofile.rb'
    autoload :NetworkInterfaceReferenceProperties,                'azure_mgmt_compute/models/network_interface_reference_properties.rb'
    autoload :NetworkProfile,                                     'azure_mgmt_compute/models/network_profile.rb'
    autoload :VirtualMachineExtensionHandlerInstanceView,         'azure_mgmt_compute/models/virtual_machine_extension_handler_instance_view.rb'
    autoload :VirtualMachineAgentInstanceView,                    'azure_mgmt_compute/models/virtual_machine_agent_instance_view.rb'
    autoload :DiskInstanceView,                                   'azure_mgmt_compute/models/disk_instance_view.rb'
    autoload :VirtualMachineInstanceView,                         'azure_mgmt_compute/models/virtual_machine_instance_view.rb'
    autoload :VirtualMachineProperties,                           'azure_mgmt_compute/models/virtual_machine_properties.rb'
    autoload :VirtualMachineListResult,                           'azure_mgmt_compute/models/virtual_machine_list_result.rb'
    autoload :DeleteOperationResult,                              'azure_mgmt_compute/models/delete_operation_result.rb'
    autoload :AvailabilitySet,                                    'azure_mgmt_compute/models/availability_set.rb'
    autoload :VirtualMachineImage,                                'azure_mgmt_compute/models/virtual_machine_image.rb'
    autoload :VirtualMachineImageResource,                        'azure_mgmt_compute/models/virtual_machine_image_resource.rb'
    autoload :VirtualMachineExtensionImage,                       'azure_mgmt_compute/models/virtual_machine_extension_image.rb'
    autoload :VirtualMachineExtension,                            'azure_mgmt_compute/models/virtual_machine_extension.rb'
    autoload :NetworkInterfaceReference,                          'azure_mgmt_compute/models/network_interface_reference.rb'
    autoload :VirtualMachine,                                     'azure_mgmt_compute/models/virtual_machine.rb'
    autoload :StatusLevelTypes,                                   'azure_mgmt_compute/models/status_level_types.rb'
    autoload :OperatingSystemTypes,                               'azure_mgmt_compute/models/operating_system_types.rb'
    autoload :UsageUnit,                                          'azure_mgmt_compute/models/usage_unit.rb'
    autoload :ComputeOperationStatus,                             'azure_mgmt_compute/models/compute_operation_status.rb'
    autoload :VirtualMachineSizeTypes,                            'azure_mgmt_compute/models/virtual_machine_size_types.rb'
    autoload :CachingTypes,                                       'azure_mgmt_compute/models/caching_types.rb'
    autoload :DiskCreateOptionTypes,                              'azure_mgmt_compute/models/disk_create_option_types.rb'
    autoload :PassNames,                                          'azure_mgmt_compute/models/pass_names.rb'
    autoload :ComponentNames,                                     'azure_mgmt_compute/models/component_names.rb'
    autoload :SettingNames,                                       'azure_mgmt_compute/models/setting_names.rb'
    autoload :ProtocolTypes,                                      'azure_mgmt_compute/models/protocol_types.rb'
    autoload :OperationStatus,                                    'azure_mgmt_compute/models/operation_status.rb'
  end
end
