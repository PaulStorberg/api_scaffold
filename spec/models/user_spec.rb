# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = build(:user)
      expect(user).to be_valid
    end

    it 'is not valid without an email' do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it 'is not valid with a duplicate email' do
      create(:user, email: 'test@example.com')
      user = build(:user, email: 'test@example.com')
      expect(user).not_to be_valid
    end
  end

  # UNCOMMENT THIS CODE TO TEST THE OAUTH FUNCTIONALITY
  # Make sure you have the omniauth set up in your Rails app

  # describe 'from_omniauth' do
  #   let(:auth) do
  #     OpenStruct.new(
  #       provider: 'google_oauth2',
  #       uid: '123456',
  #       info: OpenStruct.new(
  #         email: 'oauth@example.com'
  #       )
  #     )
  #   end

  #   it 'creates a user from oauth data' do
  #     user = User.from_omniauth(auth)
  #     expect(user).to be_persisted
  #     expect(user.email).to eq('oauth@example.com')
  #     expect(user.provider).to eq('google_oauth2')
  #     expect(user.uid).to eq('123456')
  #   end
  # end
end
