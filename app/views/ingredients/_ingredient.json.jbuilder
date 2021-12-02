json.extract! ingredient, :id, :ingredient_name, :recipe_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
