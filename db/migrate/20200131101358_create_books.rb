class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :amazon_url
      t.string :isbn_code
      t.text :first_plan
      t.text :second_plan
      t.text :third_plan
      t.integer :user_id
      
      t.timestamps
    end
  end
end
