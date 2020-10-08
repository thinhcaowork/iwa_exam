class AddQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions, id: :serial, force: false do |t|
      t.integer :test_id, null: false
      t.string :content, limit: 255, null: false
      t.timestamps
    end
  end
end
