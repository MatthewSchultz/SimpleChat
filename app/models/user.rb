class User < ApplicationRecord
  has_many :rooms, foreign_key: 'owner_id', dependent: :destroy
  has_many :messages, dependent: :destroy

  has_secure_password
  validates :name, uniqueness: true, presence: true
  validates :password, format: { with: /\A(?=.*\d).{6,}\z/, message: 'must be at least 6 characters and contain at least one number'}, on: :create
  validates :email_address, uniqueness: true, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: 'must be a valid email address'}
end
