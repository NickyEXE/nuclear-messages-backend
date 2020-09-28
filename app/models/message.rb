class Message < ApplicationRecord
  belongs_to :facility
  has_many :graffitis
  has_many :users, through: :graffitis
end
