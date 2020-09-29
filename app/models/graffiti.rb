class Graffiti < ApplicationRecord
  belongs_to :user
  belongs_to :message
  validates :content, length: {maximum: 50}
  validate :five_words_only



  def five_words_only
    if content.split(" ").length > 5
      errors.add(:content, "should not have more than five words")
    end
  end

  # def expiration_date_cannot_be_in_the_past
  #   if expiration_date.present? && expiration_date < Date.today
  #     errors.add(:expiration_date, "can't be in the past")
  #   end
  # end
end
