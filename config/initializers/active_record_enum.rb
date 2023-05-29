# frozen_string_literal: true

class ActiveRecord::Enum::EnumType < ActiveRecord::Type::Value # rubocop:disable Style/Documentation
  def assert_valid_value(value)
    value unless value.blank? || mapping.key?(value) || mapping.value?(value)
  end
end
