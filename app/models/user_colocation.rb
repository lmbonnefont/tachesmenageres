class UserColocation < ApplicationRecord
  belongs_to :user
  belongs_to :colocation
end
