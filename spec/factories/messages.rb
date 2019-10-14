# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    chatroom { nil }
    user { nil }
    body { 'MyText' }
  end
end
