class AddTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests, id: :serial, force: false do |t|
      t.string :title, limit: 100, null: false
      t.string :description, limit: 255, null: false
      t.timestamps
    end
  end
end
