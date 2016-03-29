class Order < ActiveRecord::Base
  belongs_to :customer, class_name "User"
  belongs_to :showing
end