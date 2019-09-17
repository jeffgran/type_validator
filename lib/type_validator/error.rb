# frozen_string_literal: true

require 'active_model'

class TypeValidator
  module Error
    class InvalidDefinition < ArgumentError
      OPTIONS = 'Options to define one: `:is_a`/`:kind_of` or :respond_to'.freeze

      def initialize(attribute)
        super "invalid type definition for :#{attribute} attribute. #{OPTIONS}"
      end

      private_constant :OPTIONS
    end
  end
end
