# frozen_string_literal: true

# Testing your GraphQL API:
# docker-compose exec web rails c
# rails dev:sample_data
# ApiScaffoldSchema.execute("{ users { id email } }").to_h

module Types
  # QueryType is the root of this GraphQL API
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false, description: 'Returns a list of users'

    def users
      User.all
    end
  end
end
