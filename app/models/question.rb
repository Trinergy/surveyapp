class Question < ActiveRecord::Base
  # attr_accessible :text, :form_id, :question_type_id, :answer_attributes
  # attr_accessor :answer
  belongs_to :form
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
end
