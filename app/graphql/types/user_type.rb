# frozen_string_literal: true

module Types
  # GraphQL type for User model, exposing user attributes
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
  end
end
