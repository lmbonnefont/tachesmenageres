class User < ApplicationRecord
  has_many :user_colocations
  has_many :user_tans
  has_many :tache_menageres
end
