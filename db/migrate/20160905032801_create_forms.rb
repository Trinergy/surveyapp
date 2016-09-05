class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer :user_id
      t.integer :form_group_id
      t.string :title
      t.text :text
      t.boolean :template

      t.timestamps null: false
    end
  end
end
