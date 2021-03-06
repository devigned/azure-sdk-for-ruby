# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents an Azure SQL database replication link.
    #
    class ReplicationLink < SqlSubResource

      include MsRestAzure

      # @return [String] The name of the Azure SQL server hosting the partner
      # Azure SQL Database.
      attr_accessor :partner_server

      # @return [String] The name of the partner Azure SQL Database.
      attr_accessor :partner_database

      # @return [String] The Azure Region of the partner Azure SQL Database.
      attr_accessor :partner_location

      # @return [ReplicationRole] The role of the Azure SQL database in the
      # replication link. Possible values include: 'Primary', 'Secondary',
      # 'NonReadableSecondary', 'Source', 'Copy'
      attr_accessor :role

      # @return [ReplicationRole] The role of the partner Azure SQL Database in
      # the replication link. Possible values include: 'Primary', 'Secondary',
      # 'NonReadableSecondary', 'Source', 'Copy'
      attr_accessor :partner_role

      # @return [DateTime] The start time for the replication link (ISO8601
      # format).
      attr_accessor :start_time

      # @return [Integer] The percentage of seeding complete for the
      # replication link.
      attr_accessor :percent_complete

      # @return [ReplicationState] The replication state for the replication
      # link. Possible values include: 'PENDING', 'SEEDING', 'CATCH_UP',
      # 'SUSPENDED'
      attr_accessor :replication_state


      #
      # Mapper for ReplicationLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReplicationLink',
          type: {
            name: 'Composite',
            class_name: 'ReplicationLink',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              partner_server: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerServer',
                type: {
                  name: 'String'
                }
              },
              partner_database: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerDatabase',
                type: {
                  name: 'String'
                }
              },
              partner_location: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerLocation',
                type: {
                  name: 'String'
                }
              },
              role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.role',
                type: {
                  name: 'Enum',
                  module: 'ReplicationRole'
                }
              },
              partner_role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerRole',
                type: {
                  name: 'Enum',
                  module: 'ReplicationRole'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              percent_complete: {
                required: false,
                read_only: true,
                serialized_name: 'properties.percentComplete',
                type: {
                  name: 'Number'
                }
              },
              replication_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationState',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
