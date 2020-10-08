# == Schema Information
#
# Table name: question_options
#
#  id                :serial           not null, primary key
#  content           :string(255)      not null
#  is_correct_answer :boolean          default(FALSE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  question_id       :integer          not null
#
class QuestionOption < ApplicationRecord
    belongs_to :question
    validates :content, :question_id, :is_correct_answer, presence: true
end
