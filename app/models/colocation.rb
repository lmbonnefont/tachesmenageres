class Colocation < ApplicationRecord
  has_many :user_colocations
  has_many :tache_menageres
  has_many :users, through: :user_colocations
end
