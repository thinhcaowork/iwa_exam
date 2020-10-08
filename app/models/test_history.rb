# == Schema Information
#
# Table name: test_histories
#
#  id                    :serial           not null, primary key
#  correct_answer_number :integer          not null
#  fail_answer_number    :integer          not null
#  total_of_questions    :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  test_id               :string           not null
#  user_id               :string           not null
#
class TestHistory < ApplicationRecord
    belongs_to :test
    belongs_to :user
    validates :test_id, :user_id, :total_of_questions, :correct_answer_number, :fail_answer_number, presence: true
end
