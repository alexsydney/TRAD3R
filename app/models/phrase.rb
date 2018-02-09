class Phrase < ApplicationRecord

  has_and_belongs_to_many :avatars

  belongs_to :user, optional: true

end
