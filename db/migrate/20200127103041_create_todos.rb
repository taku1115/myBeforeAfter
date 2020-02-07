class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.integer :content_id
      t.text :plan
      t.timestamps
    end
  end
end
