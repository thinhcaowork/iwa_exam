# == Schema Information
#
# Table name: questions
#
#  id         :serial           not null, primary key
#  content    :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  test_id    :integer          not null
#
class Question < ApplicationRecord
    belongs_to :test
    has_many :question_options
    validates :test_id, :content, presence: true
end
