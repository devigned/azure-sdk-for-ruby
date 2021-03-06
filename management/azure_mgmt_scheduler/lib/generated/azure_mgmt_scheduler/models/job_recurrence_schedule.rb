# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    # 
    #
    class JobRecurrenceSchedule

      include MsRestAzure

      # @return [Array<DayOfWeek>] Gets or sets the days of the week that the
      # job should execute on.
      attr_accessor :week_days

      # @return [Array<Integer>] Gets or sets the hours of the day that the job
      # should execute at.
      attr_accessor :hours

      # @return [Array<Integer>] Gets or sets the minutes of the hour that the
      # job should execute at.
      attr_accessor :minutes

      # @return [Array<Integer>] Gets or sets the days of the month that the
      # job should execute on. Must be between 1 and 31.
      attr_accessor :month_days

      # @return [Array<JobRecurrenceScheduleMonthlyOccurrence>] Gets or sets
      # the occurrences of days within a month.
      attr_accessor :monthly_occurrences


      #
      # Mapper for JobRecurrenceSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobRecurrenceSchedule',
          type: {
            name: 'Composite',
            class_name: 'JobRecurrenceSchedule',
            model_properties: {
              week_days: {
                required: false,
                serialized_name: 'weekDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              hours: {
                required: false,
                serialized_name: 'hours',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              minutes: {
                required: false,
                serialized_name: 'minutes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              month_days: {
                required: false,
                serialized_name: 'monthDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              monthly_occurrences: {
                required: false,
                serialized_name: 'monthlyOccurrences',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobRecurrenceScheduleMonthlyOccurrenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobRecurrenceScheduleMonthlyOccurrence'
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
