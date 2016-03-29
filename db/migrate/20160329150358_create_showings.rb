class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.integer :movie_id
      t.integer :auditorium_id
      t.date :date
      t.time :time
    end
  end
end
