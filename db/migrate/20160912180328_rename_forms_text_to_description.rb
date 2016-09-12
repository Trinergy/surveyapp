class RenameFormsTextToDescription < ActiveRecord::Migration
  def change
    change_table :forms do |t|
      t.rename :text, :description
    end
  end
end
