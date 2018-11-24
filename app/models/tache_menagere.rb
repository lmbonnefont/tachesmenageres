class TacheMenagere < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :colocation
  has_many :user_tans

  # def add_respo_to_tache(user_assigned)
  #   self.user_id == user_assigned.id
  # end
end
