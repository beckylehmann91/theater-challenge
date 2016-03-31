class Movie < ActiveRecord::Base
  has_many :showings
  has_many :orders, through: :showings
  has_many :auditoriums, through: :showings
end