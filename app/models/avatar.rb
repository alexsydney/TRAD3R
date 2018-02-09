class Avatar < ApplicationRecord


has_and_belongs_to_many :phrases

belongs_to :user, optional: true


end
