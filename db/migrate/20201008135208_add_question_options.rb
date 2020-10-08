class AddQuestionOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :question_options, id: :serial, force: false do |t|
      t.integer :question_id, null: false
      t.string :content, limit: 255, null: false
      t.boolean :is_correct_answer, default: false
      t.timestamps
    end
  end
end
