require 'rails'
require 'administrate/field/base'
require 'administrate/engine'

module Administrate
  module Field
    class StateMachine < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_stylesheet 'administrate-field-state_machine/application'
      end

      def self.searchable?
        true
      end

      def to_s
        data.humanize
      end

      # First-level transitions that can be triggered from the current state
      def transitions
        resource.state_paths.map(&:first).uniq
      end
    end
  end
end
