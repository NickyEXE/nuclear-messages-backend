class User < ApplicationRecord
  has_many :graffitis
  has_many :messages, through: :graffitis
  has_many :facilities, through: :messages

  def unique_facilities
    self.facilities.uniq.pluck(:name)
  end
end
