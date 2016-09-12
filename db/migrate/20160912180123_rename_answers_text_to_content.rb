class RenameAnswersTextToContent < ActiveRecord::Migration
  def change
    change_table :answers do |t|
      t.rename :text, :content
    end
  end
end
