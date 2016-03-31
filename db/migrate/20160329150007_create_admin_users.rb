class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string   :username
      t.string   :password_digest
    end
  end
end
