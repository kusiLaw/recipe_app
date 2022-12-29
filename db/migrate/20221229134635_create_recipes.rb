class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.time :preparation_time
      t.text :description
      t.boolean :public
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end