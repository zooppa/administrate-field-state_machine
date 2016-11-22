require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Engine < ::Rails::Engine
    end

    class StateMachine < Administrate::Field::Base
      def self.searchable?
        true
      end

      def to_s
        data
      end

      def all_states
        resource.class.state_machine.states.map(&:name)
      end

      def possible_states
        resource.state_paths.to_states
      end
    end
  end
end
