# frozen_string_literal: true

module Types
  # UserType
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
  end
end
