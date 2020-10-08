class AddUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :serial, force: false do |t|
      t.string :name, limit: 100, null: false
      t.string :email, limit: 200, null: false
      t.string :password_digest, null: false
      t.string :role, null: false
      t.timestamps
    end
  end
end
