require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    subject { build :product }

    it do
      is_expected.to define_enum_for(:category).with_values(
        {
          accessories: "accessories",
          shoes: "shoes",
          top: "top",
        }
      ).backed_by_column_of_type(:string)
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:uid) }
    it { is_expected.to validate_uniqueness_of(:uid) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_inclusion_of(:category).in_array(%w[accessories shoes top]) }
  end
end
