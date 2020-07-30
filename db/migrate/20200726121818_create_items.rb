class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :image, null: false
      t.integer :category_id, null: false, foreign_key: true
      t.integer :color_id, null: false, foreign_key: true
      t.integer :season_id, null: false, foreign_key: true
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
