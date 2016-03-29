class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :showing_id
      t.integer :customer_id
      t.string :name
      t.string :email
      t.integer :credit_card
      t.date :card_expy_date
    end
  end
end
