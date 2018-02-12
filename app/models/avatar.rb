class Avatar < ApplicationRecord


has_and_belongs_to_many :phrases

belongs_to :user, optional: true

  def is_owner?( u )
    return nil unless u
    user_id == u.id
  end



end
