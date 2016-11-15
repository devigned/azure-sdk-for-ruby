# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    # 
    #
    class SupportedPlatformsListResult

      include MsRestAzure

      # @return [Array<String>] List of supported platforms.
      attr_accessor :platforms


      #
      # Mapper for SupportedPlatformsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SupportedPlatformsListResult',
          type: {
            name: 'Composite',
            class_name: 'SupportedPlatformsListResult',
            model_properties: {
              platforms: {
                required: false,
                serialized_name: 'platforms',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
