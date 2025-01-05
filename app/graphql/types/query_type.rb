# frozen_string_literal: true

# Testing your GraphQL API:
# Bundle exec rails c
# rails dev:sample_data
# query = "{ users { id email } }"
# result = GraphqlApiSchema.execute(query)

module Types
  # Root query type for the GraphQL API
  class QueryType < Types::BaseObject
    field :users, [UserType], null: false

    def users
      User.all
    end
  end
end
