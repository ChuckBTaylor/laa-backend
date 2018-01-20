class User < ApplicationRecord
  belongs_to :state
  belongs_to :district

  def senators
    self.state.senators
  end

  def rep
    self.district.rep
  end


end
