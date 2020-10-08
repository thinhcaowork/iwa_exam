# == Schema Information
#
# Table name: tests
#
#  id          :serial           not null, primary key
#  description :string(255)      not null
#  title       :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Test < ApplicationRecord
    has_many :questions
    validates :title, :description, presence: true
end
