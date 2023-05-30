# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    confirmed_at { Date.current }
  end
end
