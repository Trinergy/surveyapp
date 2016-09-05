class Answer < ActiveRecord::Base
  # attr_accessible :name, :text, :question_id, :answer_type, :selected, :order
  belongs_to :question
end
