class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.string   :name
      t.integer  :capacity
    end
  end
end