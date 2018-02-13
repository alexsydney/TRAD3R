class User < ApplicationRecord

  has_secure_password

  has_many :avatars

  has_many :messages
  has_many :conversations, foreign_key: :sender_id

  validates :email, presence: true, uniqueness: true

  validates :name, presence: true

  def can_buy?(item)
    coins >= item.value
  end

end
