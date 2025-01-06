# frozen_string_literal: true

# Schema definition for the API Scaffold GraphQL interface
class ApiScaffoldSchema < GraphQL::Schema
  query(Types::QueryType)
  use GraphQL::Dataloader
end
