class IngredientsController < ApplicationController

def new 
    @ingredient = Ingredient.new
end

def create
    @ingredient = Ingredient.new(ing_params)
    if @ingredient.save
        flash[:success]="Style was created successfully"
        redirect_to recipes_path
    else
        render 'new'
    end
end

private 

def ing_params
    params.require(:ingredient).permit(:name)
end

end