json.extract! recipe, :id, :recipe_name, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
