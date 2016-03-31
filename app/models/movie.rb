class Movie < ActiveRecord::Base
  has_many  :showings
  has_many  :orders, through: :showings
  has_many  :auditoria, through: :showings

  validates :title, presence: true
end