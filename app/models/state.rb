class Api::V1::State < ApplicationRecord
  has_many :users
  has_many :districts
  has_many :senators
  
end
