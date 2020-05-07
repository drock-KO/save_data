class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :text
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
