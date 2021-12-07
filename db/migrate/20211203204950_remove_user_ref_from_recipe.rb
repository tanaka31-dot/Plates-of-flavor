class RemoveUserRefFromRecipe < ActiveRecord::Migration[6.1]
  def change
    remove_reference :recipes, :user, null: false, foreign_key: true
  end
end
