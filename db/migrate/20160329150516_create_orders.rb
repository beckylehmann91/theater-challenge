class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer  :showing_id
      t.string   :name
      t.string   :email
      t.string   :credit_card
      t.date     :card_expy_date
    end
  end
end
