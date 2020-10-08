# == Schema Information
#
# Table name: users
#
#  id              :serial           not null, primary key
#  email           :string(200)      not null
#  name            :string(100)      not null
#  password_digest :string           not null
#  role            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    has_secure_password
    has_many :test_histories
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }
    validates :role, :name, presence: true

    enum role: { teacher: 'Teacher', student: 'Student' }

    scope :by_email, -> (email){ where(email: email) }
    scope :teacher_role, -> { where(role: :teacher) }
end
