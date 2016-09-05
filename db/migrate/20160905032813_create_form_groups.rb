class CreateFormGroups < ActiveRecord::Migration
  def change
    create_table :form_groups do |t|

      t.timestamps null: false
    end
  end
end
