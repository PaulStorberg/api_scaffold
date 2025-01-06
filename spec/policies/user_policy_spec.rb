# frozen_string_literal: true

require 'rails_helper'

describe UserPolicy do
  subject { described_class.new(user, record) }

  let(:user) { create(:user) }
  let(:record) { create(:user) }

  context 'when user is a visitor' do
    let(:user) { nil }

    it { is_expected.to forbid_action(:show) }
    it { is_expected.to forbid_action(:create) }
    it { is_expected.to forbid_action(:update) }
    it { is_expected.to forbid_action(:destroy) }
  end

  context 'when user is a regular user' do
    it { is_expected.to forbid_action(:show) }
    it { is_expected.to forbid_action(:create) }
    it { is_expected.to forbid_action(:update) }
    it { is_expected.to forbid_action(:destroy) }
  end
end
