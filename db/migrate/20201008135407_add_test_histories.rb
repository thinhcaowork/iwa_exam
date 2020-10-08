class AddTestHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :test_histories, id: :serial, force: false do |t|
      t.string :test_id, null: false
      t.string :user_id, null: false
      t.integer :correct_answer_number, null: false
      t.integer :fail_answer_number, null: false
      t.integer :total_of_questions, null: false
      t.timestamps
    end
  end
end
