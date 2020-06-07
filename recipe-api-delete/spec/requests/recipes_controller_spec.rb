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

  describe 'show' do
    it 'return ok status' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)

      get "/recipes/#{recipe.id}"

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

      get "/recipes/#{recipe.id}"

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include recipe.title
      expect(response.body).to include recipe.description
      expect(response.body).to include recipe.recipe_type.title
      expect(response.body).not_to include another_recipe.title
      expect(response.body).not_to include another_recipe.description
    end
  end

  describe 'create' do
    it 'return ok status' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = { recipe: { title: 'Feijoada',
                 description: 'Um delicioso prato',
                 recipe_type_id: recipe_type.id } }

      post '/recipes', params: recipe

      expect(response).to have_http_status(201)
    end

    it 'create recipe with params' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = { recipe: { title: 'Feijoada',
                 description: 'Um delicioso prato',
                 recipe_type_id: recipe_type.id } }

      post '/recipes', params: recipe

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Feijoada'
      expect(response.body).to include 'Um delicioso prato'
      expect(response.body).to include 'Prato Principal'
    end

    it 'validates recipe' do
      recipe = { recipe: { title: '',
                 description: '' } }

      post '/recipes', params: recipe

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Title can\'t be blank'
      expect(response.body).to include 'Description can\'t be blank'
      expect(response.body).to include 'Recipe type must exist'
    end
  end

  describe 'update' do
    it 'return ok status' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)
      recipe_params = { recipe: { title: 'Arroz carreteiro',
                                  description: 'Um delicioso arroz' } }

      put "/recipes/#{recipe.id}", params: recipe_params

      expect(response).to have_http_status(200)
    end

    it 'update recipe with params' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)
      recipe_params = { recipe: { title: 'Arroz carreteiro',
                                  description: 'Um delicioso arroz' } }

      put "/recipes/#{recipe.id}", params: recipe_params

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Arroz carreteiro'
      expect(response.body).to include 'Um delicioso arroz'
      expect(response.body).to include 'Prato Principal'
    end

    it 'validates recipe' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)
      recipe_params = { recipe: { title: '',
                                  description: '' } }

      put "/recipes/#{recipe.id}", params: recipe_params

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Title can\'t be blank'
      expect(response.body).to include 'Description can\'t be blank'
    end
  end

  describe 'destroy' do
    it 'return ok status' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)

      delete "/recipes/#{recipe.id}"

      expect(response).to have_http_status(200)
    end

    it 'return deleted message' do
      recipe_type = RecipeType.create(title: 'Prato Principal')
      recipe = Recipe.create(title: 'Feijoada',
                             description: 'Um delicioso prato',
                             recipe_type: recipe_type)

      delete "/recipes/#{recipe.id}"

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Receita apagada com sucesso.'
    end

    it 'return message if cannot be deleted' do

      delete "/recipes/10"

      expect(response.content_type).to eq('application/json')
      expect(response.body).to include 'Receita não pode ser apagada'
    end
  end
end
