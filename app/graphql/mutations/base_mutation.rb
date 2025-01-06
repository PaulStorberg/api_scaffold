# frozen_string_literal: true

module Mutations
  # Base class for all mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    object_class Types::BaseObject
  end
end
