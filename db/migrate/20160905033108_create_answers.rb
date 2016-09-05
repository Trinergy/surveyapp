class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :answer_type
      t.string :name
      t.text :text
      t.boolean :selected
      t.integer :order

      t.timestamps null: false
    end
  end
end
