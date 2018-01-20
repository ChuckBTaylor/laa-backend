class District < ApplicationRecord
  belongs_to :state
  has_many :users
  has_one :rep
end
