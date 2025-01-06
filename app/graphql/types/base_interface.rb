# frozen_string_literal: true

# Base module for all GraphQL interfaces
module BaseInterface
  include GraphQL::Schema::Interface
  edge_type_class(Types::BaseEdge)
  connection_type_class(Types::BaseConnection)

  field_class Types::BaseField
end
