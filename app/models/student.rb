class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  # has_many :courses, through: :enrolments
end
