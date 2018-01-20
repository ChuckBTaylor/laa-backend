class State < ApplicationRecord
  has_many :users
  has_many :districts
  has_many :senators


  def getUserDistrict(district_num)
    District.find_by(state: self.id, number: district_num)
  end

end
