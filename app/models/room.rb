class Room < ApplicationRecord
  belongs_to :owner, class_name: 'User', optional: true
  has_many :messages, dependent: :destroy

  has_secure_password validations: false

  validates :name, presence: true, uniqueness: true

  scope :visible_to, -> (user) { user.present? ? where(visible: true).or(user.rooms) : where(visible: true) }
end
