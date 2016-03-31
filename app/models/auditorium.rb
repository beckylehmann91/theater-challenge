class Auditorium < ActiveRecord::Base
  has_many :showings
  has_many :movies, through: :showings
  has_many :orders, through: :showings


  def num_seats_available
    self.capacity - self.orders.count
  end

  def seats_available?
    self.num_seats_available > 0
  end

end