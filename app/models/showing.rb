class Showing < ActiveRecord::Base
  belongs_to :movie
  belongs_to :auditorium
  has_many :orders
  has_many :customers, through: :orders
end