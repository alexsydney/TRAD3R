class User < ApplicationRecord

  has_secure_password

  has_many :avatars

  validates :email, presence: true, uniqueness: true

  validates :name, presence: true

  def can_buy?(item)
    coins >= item.value
  end

end
