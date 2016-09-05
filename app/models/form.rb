class Form < ActiveRecord::Base
  # attr_accessible :title, :text, :template, :form_group_id, :question_attributes
  attr_accessor :question
  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true
end
