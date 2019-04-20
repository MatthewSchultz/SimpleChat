class Room < ApplicationRecord
  belongs_to :owner, class_name: 'User', optional: true
  has_secure_password validations: false

  validates :name, presence: true, uniqueness: true

  scope :visible_to, -> (user) { user.present? ? where(visible: true).or(user_id: user.id) : where(visible: true) }
end
