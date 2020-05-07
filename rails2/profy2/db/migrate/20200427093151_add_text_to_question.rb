class AddTextToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :text, :text
  end
end
