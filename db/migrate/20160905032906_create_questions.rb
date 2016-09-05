class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :form_id
      t.integer :question_type_id
      t.text :question
      t.integer :order

      t.timestamps null: false
    end
  end
end
