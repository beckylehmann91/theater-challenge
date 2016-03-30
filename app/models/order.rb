class Order < ActiveRecord::Base
  belongs_to :customer, class_name "User"
  belongs_to :showing

  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "not a valid email address"}
  validates :creditcard, presence: true, numericality: { only_integer: true }, length: { is: 16 }
  validate :future_card_expy_date,

  def future_card_expy_date
    if card_expy_date && card_expy_date < Date.today
      errors.add(:card_expy_date, "card expiration date must be a future date")
    end
  end

end