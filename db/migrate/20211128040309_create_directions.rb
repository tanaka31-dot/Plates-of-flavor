class CreateDirections < ActiveRecord::Migration[6.1]
  def change
    create_table :directions do |t|
      t.text :direction_content
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
