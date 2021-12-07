class LikesController < ApplicationController
    before_action :set_recipe
    before_action :set_user
    before_action :authenticate_user

    def like_recipe
        if !@recipe.users.include?(@user)
            @recipe.users << @user
            redirect_to user_path(@user)
        end
    end

    def unlike_recipe
        if @recipe.users.include?(@user)
            @recipe.users.delete(@user)
            redirect_to user_path(@user)
        end
    end

    private
    def set_recipe
        @recipe = Recipe.find_by(id: params[:recipe_id])
    end

    def set_user
        @user = User.find_by(id: params[:user_id])
    end  
end
  