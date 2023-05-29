# frozen_string_literal: true

require "rails_helper"

RSpec.describe ProductInventory do
  describe "Associations" do
    it { is_expected.to belong_to(:product) }
  end

  describe "Validations" do
    subject { build :product_inventory }

    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_uniqueness_of(:product_id).scoped_to(%i[size color]) }
  end
end
