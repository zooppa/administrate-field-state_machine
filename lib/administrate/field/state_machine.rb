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
        data.humanize
      end

      # First-level transitions that can be triggered from the current state
      def transitions
        resource.state_paths.map(&:first).uniq
      end
    end
  end
end
