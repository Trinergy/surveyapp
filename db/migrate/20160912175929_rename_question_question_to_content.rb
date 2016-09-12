class RenameQuestionQuestionToContent < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.rename :question, :content
    end
  end
end
