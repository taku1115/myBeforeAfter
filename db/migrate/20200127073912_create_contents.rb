class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :name
      t.text :url
      t.text :first_plan
      t.text :second_plan
      t.text :third_plan
      t.timestamps
    end
  end
end
