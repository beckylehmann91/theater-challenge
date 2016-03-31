class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :auditorium
  has_many   :orders
  has_many   :customers, through: :orders

  validates  :movie_id, presence: true
  validates  :auditorium_id, presence: true
  validates  :date, presence: true
  validates  :time, presence: true
  validate   :future_showing_date

  def future_showing_date
    if date && date < Date.today
      errors.add(:date, "showing date must be a future date")
    end
  end
end