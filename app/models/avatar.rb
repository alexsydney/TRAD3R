class Avatar < ApplicationRecord


has_and_belongs_to_many :phrases

belongs_to :user, optional: true

  def is_owner?( u )
    return nil unless u
    user_id == u.id
  end

  def in_order
    order(created_at: :asc)
  end

  def recent(n)
    in_order.endmost(n)
  end

  def endmost(n)
    all.only(:order).from(all.reverse_order.limit(n), table_name)
  end




end
