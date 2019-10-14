# frozen_string_literal: true

FactoryBot.define do
  factory :chatroom_user do
    chatroom { nil }
    user { nil }
  end
end
