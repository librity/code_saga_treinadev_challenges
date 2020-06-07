require 'rails_helper'

describe 'Recipes Controller', type: :request do
  describe 'index' do
    it 'return ok status' do
      get '/recipes'

      expect(response).to have_http_status(200)
    end

    it 'return all recipes' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)
      another_recipe = Recipe.create(title: 'Arroz Carreteiro',
                                     description: 'Um delicioso arroz',
                                     recipe_type: recipe_type)

      get '/recipes'

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include recipe.title
      expect(response.body).to include recipe.description
      expect(response.body).to include recipe.recipe_type.title
      expect(response.body).to include another_recipe.title
      expect(response.body).to include another_recipe.description
      expect(response.body).to include another_recipe.recipe_type.title
    end
  end
end
