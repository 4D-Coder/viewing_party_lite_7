# frozen_string_literal: true

# app/models/user.rb
class User < ApplicationRecord
  has_many :viewing_party_users, dependent: :destroy
  has_many :viewing_parties, through: :viewing_party_users
end
