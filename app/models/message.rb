class Message < ApplicationRecord
  belongs_to :facility
  has_many :graffitis
end
