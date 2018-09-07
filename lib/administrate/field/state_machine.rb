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

      def named_paths
        "#{attribute}_paths"
      end

      def named_event
        "#{attribute}_event"
      end

      # First-level transitions that can be triggered from the current state
      def transitions
        resource.send(named_paths).map(&:first).uniq
      end
    end
  end
end
