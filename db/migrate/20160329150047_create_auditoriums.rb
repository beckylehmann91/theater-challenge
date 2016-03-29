class CreateAuditoriums < ActiveRecord::Migration
  def change
    create_table :auditoriums do |t|
      t.string :name
      t.integer :capacity
    end
  end
end
