class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :distance
      t.float :price

      t.timestamps
    end
  end
end
